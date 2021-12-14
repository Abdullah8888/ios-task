//
//  CampaignBrowserTests.swift
//  CampaignBrowserTests
//
//  Created by Abdullah on 14/12/2021.
//  Copyright © 2021 Westwing GmbH. All rights reserved.
//

import XCTest
@testable import CampaignBrowser

class CampaignBrowserTests: XCTestCase {

    var campaignListingView: CampaignListingView!
    var cellWidth = UIScreen.main.bounds.width
    var nameText = "Krative Wandideen"
    var descriptionText = "Saugen Sie etwa noch selbst? Der LG HomBot Square übernimmt den Job zuverlässig. Mit seinen zwei Kameras navigiert der Saugroboter präzise durch die Räume oder einen festgelegten Bereich und reinigt sogar im Dunkeln. Dank der Ultraschallsensoren bewegt er sich besonders vorsichtig, meistert selbst Kanten und Schwellen mühelos und saugt bis in die Ecken. Und selbst wischen kann der neue Hausfreund"
    var collectionView: UICollectionView!
    
    override func setUp() {
        campaignListingView = CampaignListingView(frame: .zero, collectionViewLayout: CampaignLayout(numberOfColumns: 1, cellPadding: 0))
    }
    
    func testNameLblHeight() {
        XCTAssertEqual(campaignListingView.newNameLabelHeight(text: nameText, cellWidth: cellWidth), 20.5)
    }
    
    func testDescriptionLblHeight() {
        XCTAssertEqual(campaignListingView.newDescriptionLabelHeight(text: descriptionText, cellWidth: cellWidth), 72.0)
    }

    override func tearDown() {
        campaignListingView = nil
        collectionView = nil
    }
}
