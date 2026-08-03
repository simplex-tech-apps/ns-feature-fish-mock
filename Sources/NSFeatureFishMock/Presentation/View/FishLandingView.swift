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
            ReusableHeaderView(
                style: .standard(title: "Shop by category", subtitle: nil)
            )
            NAGridViewV6(
                rowCount: 0,
                columnCount: 3,
                scrollDirection: .vertical
            )
            ReusableHeaderView(
                style: .standard(title: "From Marine/Sea", subtitle: nil)
            )
            NAGridViewV4(
                rowCount: 2,
                columnCount: 0,
                scrollDirection: .horizontal
            )
            SeeAllButtonViewV2() {
                
            }
            ReusableHeaderView(
                style: .standard(title: "From Freshwater/Lake", subtitle: nil)
            )
            NAGridViewV4(
                rowCount: 2,
                columnCount: 0,
                scrollDirection: .horizontal
            )
            SeeAllButtonViewV2() {
                
            }
            ReusableHeaderView(style: .standard(title: "Crab", subtitle: nil))
            NAGridViewV4(
                rowCount: 2,
                columnCount: 0,
                scrollDirection: .horizontal
            )
            SeeAllButtonViewV2() {
                
            }
            ReusableHeaderView(
                style: .standard(title: "Prawns/Shell Fish", subtitle: nil)
            )
            NAGridViewV4(
                rowCount: 2,
                columnCount: 0,
                scrollDirection: .horizontal
            )
            SeeAllButtonViewV2() {
                
            }
            ReusableHeaderView(style: .standard(title: "Exotic", subtitle: nil))
            NAGridViewV4(
                rowCount: 2,
                columnCount: 0,
                scrollDirection: .horizontal
            )
            SeeAllButtonViewV2() {
                
            }
            ReusableHeaderView(
                style: .standard(title: "Boneless", subtitle: nil)
            )
            NAGridViewV4(
                rowCount: 2,
                columnCount: 0,
                scrollDirection: .horizontal
            )
            SeeAllButtonViewV2() {
                
            }
            ReusableHeaderView(style: .standard(title: "Steaks", subtitle: nil))
            NAGridViewV4(
                rowCount: 2,
                columnCount: 0,
                scrollDirection: .horizontal
            )
            SeeAllButtonViewV2() {
                
            }
            ReusableHeaderView(
                style: .standard(title: "Dry Fish", subtitle: nil)
            )
            NAGridViewV4(
                rowCount: 2,
                columnCount: 0,
                scrollDirection: .horizontal
            )
            SeeAllButtonViewV2() {
                
            }
            ReusableHeaderView(
                style: .standard(title: "Freshly Frozen", subtitle: nil)
            )
            NAGridViewV4(
                rowCount: 2,
                columnCount: 0,
                scrollDirection: .horizontal
            )
            SeeAllButtonViewV2() {
                
            }
        }
    }
}

// MARK: - Preview Setup Engine
#Preview {
    ScrollView {
        FishLandingView(fishViewModel: FishViewModel())
    }
}

