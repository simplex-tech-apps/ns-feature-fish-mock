//
//  FishCoordinator.swift
//  NSFeatureFishMock
//
//  Created by apple on 12/07/26.
//

import SwiftData
import SwiftUI
import NammaAppUI

@MainActor
struct FishViewFactory {
    @ViewBuilder
    func buildPage(_ page: FishCoordinatorPage) -> some View {
        switch page {
        case .landingPage(let fishViewModel):
            FishLandingView(fishViewModel: fishViewModel)
        }
    }
    
    @ViewBuilder
    func buildSheet(_ sheet: FishCoordinatorSheet) -> some View {
        EmptyView()
    }
    
    @ViewBuilder
    func buildCover(_ cover: FishCoordinatorCover) -> some View {
        EmptyView()
    }
}

enum FishCoordinatorPage: Hashable {
    case landingPage(FishViewModel)
}

enum FishCoordinatorSheet: String, Identifiable {
    var id: String { rawValue }
    case noSheet
}

enum FishCoordinatorCover: String, Identifiable {
    var id: String { rawValue }
    case noCover
}

extension EnvironmentValues {
    @Entry var FishCoordinator: FishCoordinator?
    @Entry var FishViewModel: FishViewModel?
}

@Observable
class FishCoordinator: NSObject {
    var path: NavigationPath = NavigationPath()
    var sheet: FishCoordinatorSheet?
    var cover: FishCoordinatorCover?
    private(set) var currenScreen: [FishCoordinatorPage] = []
    
    func push(page: FishCoordinatorPage) {
        currenScreen.append(page)
        path.append(page)
    }
    
    func pop(_ last: Int = 1) {
        currenScreen.removeLast()
        path.removeLast(last)
    }
    
    func popToRoot() {
        currenScreen.removeAll()
        path.removeLast(path.count)
    }
    
    func present(sheet: FishCoordinatorSheet) {
        self.sheet = sheet
    }
    
    func present(cover: FishCoordinatorCover) {
        self.cover = cover
    }
    
    func popSheet() {
        withAnimation(.spring()) {
            self.sheet = nil
        }
    }
    
    func popCover() {
        self.cover = nil
    }
}

public struct FishCoordinatorView: View {
    @State
    private var fishCoordinator = FishCoordinator()
    @State
    private var fishViewModel: FishViewModel = FishViewModel()
    @State
    private var appTheme = AppThemeManager.shared
    
    let fishViewFactory: FishViewFactory = FishViewFactory()
    
    public init() {}
    
    public var body: some View {
        fishViewFactory.buildPage(.landingPage(fishViewModel))
            .navigationDestination(for: FishCoordinatorPage.self) {
                fishViewFactory.buildPage($0)
            }
            .sheet(item: $fishCoordinator.sheet) { fishViewFactory.buildSheet($0).presentationBackground(appTheme.current.secondary).presentationDetents([.medium]).presentationCornerRadius(24)
            }
            .fullScreenCover(item: $fishCoordinator.cover) {
                fishViewFactory.buildCover($0)
            }
    }
}
