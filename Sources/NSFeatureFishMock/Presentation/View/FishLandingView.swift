//
//  FishLandingView.swift
//  NSFeatureFish
//
//  Created by apple on 07/07/26.
//

import SwiftUI
import SwiftData
import NammaAppUI

struct FishLandingView: View {
    //MARK: Observed Properties
    var fishViewModel: FishViewModel
    
    var body: some View {
        VStack {
            ReusableHeaderView(style: .standard(title: "Shop by category", subtitle: nil))
            NAVerticalGrid_NxN_V2()
            ReusableHeaderView(style: .standard(title: "From Marine/Sea", subtitle: nil))
            NAHorizontalGrid_NxN_V3(rowCount: 2, columnCount: 2, scrollDirection: .horizontal)
            SeeAllButtonViewV2() {
                
            }
            ReusableHeaderView(style: .standard(title: "From Freshwater/Lake", subtitle: nil))
            NAHorizontalGrid_NxN_V3(rowCount: 2, columnCount: 2, scrollDirection: .horizontal)
            SeeAllButtonViewV2() {
                
            }
            ReusableHeaderView(style: .standard(title: "Crab", subtitle: nil))
            NAHorizontalGrid_NxN_V3(rowCount: 2, columnCount: 2, scrollDirection: .horizontal)
            SeeAllButtonViewV2() {
                
            }
            ReusableHeaderView(style: .standard(title: "Prawns/Shell Fish", subtitle: nil))
            NAHorizontalGrid_NxN_V3(rowCount: 2, columnCount: 2, scrollDirection: .horizontal)
            SeeAllButtonViewV2() {
                
            }
            ReusableHeaderView(style: .standard(title: "Exotic", subtitle: nil))
            NAHorizontalGrid_NxN_V3(rowCount: 2, columnCount: 2, scrollDirection: .horizontal)
            SeeAllButtonViewV2() {
                
            }
            ReusableHeaderView(style: .standard(title: "Boneless", subtitle: nil))
            NAHorizontalGrid_NxN_V3(rowCount: 2, columnCount: 2, scrollDirection: .horizontal)
            SeeAllButtonViewV2() {
                
            }
            ReusableHeaderView(style: .standard(title: "Steaks", subtitle: nil))
            NAHorizontalGrid_NxN_V3(rowCount: 2, columnCount: 2, scrollDirection: .horizontal)
            SeeAllButtonViewV2() {
                
            }
            ReusableHeaderView(style: .standard(title: "Dry Fish", subtitle: nil))
            NAHorizontalGrid_NxN_V3(rowCount: 2, columnCount: 2, scrollDirection: .horizontal)
            SeeAllButtonViewV2() {
                
            }
            ReusableHeaderView(style: .standard(title: "Freshly Frozen", subtitle: nil))
            NAHorizontalGrid_NxN_V3(rowCount: 2, columnCount: 2, scrollDirection: .horizontal)
            SeeAllButtonViewV2() {
                
            }
        }
    }
}

// MARK: - Preview Setup Engine
#Preview {
    FishLandingView(fishViewModel: FishViewModel())
}
