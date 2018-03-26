//
//  Settings.swift
//  game
//
//  Created by Fredrik Carlsson on 2018-01-29.
//  Copyright © 2018 Fredrik Carlsson. All rights reserved.
//

import UIKit

import SwiftyStoreKit
import StoreKit

var sharedSecrets = "ffe0fa39d1d347bc9060ffab20c98167"

enum RegistredPurchase : String{
    case buy = "unlockSecondDeck"
}

class NetworkActivityIndicatorManager : NSObject{
    private static var loadingCount = 0
    
    class func NetworkOperationStarted(){
        if(loadingCount == 0){
            UIApplication.shared.isNetworkActivityIndicatorVisible = true
        }
        loadingCount = loadingCount + 1
    }
    
    class func NetWorkOperationFinished(){
        if (loadingCount > 0){
            loadingCount = loadingCount-1
        }
        if (loadingCount == 0){
            UIApplication.shared.isNetworkActivityIndicatorVisible = false
        }
    }
}


class Settings: UIViewController {
    @IBOutlet weak var soundSwitchOutlet: UISwitch!
    @IBOutlet weak var checkBox1: BEMCheckBox!
    @IBOutlet weak var checkBox2: BEMCheckBox!
    @IBOutlet weak var checkBox3: BEMCheckBox!
    
    let unlockCards = RegistredPurchase.buy
    let bundleID = "com.carlsson.fredrik.fiveInOne"
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if(LocalDataBase.soundOn){
            soundSwitchOutlet.isOn = true
        }
        else if(LocalDataBase.soundOn == false){
            soundSwitchOutlet.isOn = false
        }
        
        if (LocalDataBase.tempCardDeck.contains(1)){
            checkBox1.on = true
        }
        if (LocalDataBase.tempCardDeck.contains(2)){
            checkBox2.on = true
        }
        if (LocalDataBase.tempCardDeck.contains(3)){
            checkBox3.on = true            
        }
        navigationController?.setNavigationBarHidden(true, animated: false)
        
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: false)
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default); navigationController?.navigationBar.shadowImage = UIImage()
    }
    
    
    
    
    @IBAction func soundSwitch(_ sender: UISwitch) {
        
        if(sender.isOn){
            LocalDataBase.soundOn = true
        }
        else{
            LocalDataBase.soundOn = false
        }
    }
    
    
    
    @IBAction func list1(_ sender: BEMCheckBox) {
        if (sender.on){
            LocalDataBase.tempCardDeck.append(1)
            
        }
        else{
            if let index = LocalDataBase.tempCardDeck.index(where: { $0 == 1 }) {
                LocalDataBase.tempCardDeck.remove(at: index)
                
            }
            
        }
        
    }
    
    @IBAction func list2(_ sender: BEMCheckBox) {
        if (sender.on){
            LocalDataBase.tempCardDeck.append(2)
            
        }
        else{
            
            if let index = LocalDataBase.tempCardDeck.index(where: { $0 == 2 }) {
                LocalDataBase.tempCardDeck.remove(at: index)
            }
        }
    }
    
    @IBAction func list3(_ sender: BEMCheckBox) {
        if (sender.on){
            LocalDataBase.tempCardDeck.append(3)
            
        }
        else{
            if let index = LocalDataBase.tempCardDeck.index(where: { $0 == 3 }) {
                LocalDataBase.tempCardDeck.remove(at: index)
            }
        }
        
    }
    
    func createAlert(message: String){
        let alert = UIAlertController(title: NSLocalizedString("missing_info_in_alert", comment: ""), message: message, preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    
    
    @IBAction func seeOwnCardsButton(_ sender: UIButton) {
        performSegue(withIdentifier: "settingsToSeeYourOwnCards", sender: self)
    }
    
    
    @IBAction func getMoreCardsButton(_ sender: UIButton) {
        getInfo(purchase: .buy)
        purchase(purchase: RegistredPurchase.buy)
        //performSegue(withIdentifier: "settingsToAddOwnCardSegue", sender: self)
    }
    
    @IBAction func dismissBackgroundButton(_ sender: UIButton) {
        if(LocalDataBase.tempCardDeck.count == 0){
            createAlert(message: NSLocalizedString("settingsAlert", comment: ""))
        }
        else{
            let _ = CoreDataHandler.cleanDeleteCardDecksNumbers()
            for card in LocalDataBase.tempCardDeck{
                var _ = CoreDataHandler.saveCardDeckNumbers(index: card)
            }
            
            dismiss(animated: true, completion: nil)
        }
    }
    
    
    @IBAction func doneButton(_ sender: UIButton) {
        if(LocalDataBase.tempCardDeck.count == 0){
            createAlert(message: NSLocalizedString("settingsAlert", comment: ""))
        }
        else{
            let _ = CoreDataHandler.cleanDeleteCardDecksNumbers()
            for card in LocalDataBase.tempCardDeck{
                var _ = CoreDataHandler.saveCardDeckNumbers(index: card)
            }
            
            dismiss(animated: true, completion: nil)
        }
    }
    
    @IBAction func closeButton(_ sender: UIButton) {
        
        if(LocalDataBase.tempCardDeck.count == 0){
            createAlert(message: NSLocalizedString("settingsAlert", comment: ""))
        }
        else{
            let _ = CoreDataHandler.cleanDeleteCardDecksNumbers()
            for card in LocalDataBase.tempCardDeck{
                var _ = CoreDataHandler.saveCardDeckNumbers(index: card)
            }
            
            dismiss(animated: true, completion: nil)
        }
    }
    
    func getInfo(purchase : RegistredPurchase){
        NetworkActivityIndicatorManager.NetworkOperationStarted()
        SwiftyStoreKit.retrieveProductsInfo([bundleID + "." + purchase.rawValue], completion: {
            result in
            NetworkActivityIndicatorManager.NetWorkOperationFinished()
            self.showAlert(alert: self.alertForProductRetriveAllInfo(result: result))
        
        })
    }
    
    func purchase(purchase : RegistredPurchase){
        
        NetworkActivityIndicatorManager.NetworkOperationStarted()
        SwiftyStoreKit.purchaseProduct(bundleID + "." + purchase.rawValue, completion: {
            result in
            NetworkActivityIndicatorManager.NetWorkOperationFinished()
            if case .success(let product) = result {
                if product.needsFinishTransaction {
                    SwiftyStoreKit.finishTransaction(product.transaction)
                    print("Success")
                }
                self.showAlert(alert: self.alertForPurchese(result: result))
            }
            self.showAlert(alert: self.alertForPurchese(result: result))
        })
    }
    
    func restorePurchases(){
        NetworkActivityIndicatorManager.NetworkOperationStarted()
        SwiftyStoreKit.restorePurchases(atomically: true, applicationUsername: bundleID, completion: {
            result in
            NetworkActivityIndicatorManager.NetWorkOperationFinished()
            
            for product in result.restoredPurchases {
                if (product.needsFinishTransaction) {
                    SwiftyStoreKit.finishTransaction(product.transaction)
            }
            }
                self.showAlert(alert: self.alertForRestorePurchases(result: result))
        })
    }
    
    func verifyRecipt() {
        NetworkActivityIndicatorManager.NetworkOperationStarted()
        SwiftyStoreKit.verifyReceipt(using: sharedSecrets as! ReceiptValidator, completion: {
            result in
            NetworkActivityIndicatorManager.NetWorkOperationFinished()
            self.showAlert(alert: self.alertForVerifyReceipt(result: result))
            
            if case .error(let error) = result {
                if case .noReceiptData = error {
                    self.refreshRecipt()
                }
                
            }
        })
    }
    
    func verifyPurchase(product : RegistredPurchase){
        NetworkActivityIndicatorManager.NetworkOperationStarted()
        SwiftyStoreKit.verifyReceipt(using: sharedSecrets as! ReceiptValidator, completion: {
            result in
            NetworkActivityIndicatorManager.NetWorkOperationFinished()
            
            switch result {
            case .success(let reciept):
                let productID = self.bundleID + "." + product.rawValue
                let purchasedResult = SwiftyStoreKit.verifyPurchase(productId: productID, inReceipt: reciept)
                self.showAlert(alert: self.alertForVerifyPurchase(result: purchasedResult))
            case .error( _):
                self.showAlert(alert: self.alertForVerifyReceipt(result: result))

            }
        })
    }
    func refreshRecipt(){
        SwiftyStoreKit.fetchReceipt(forceRefresh: true, completion: {
            result in
        
        })
    }
  
}

extension Settings {
    
    func alertWithTitle(title: String, message: String) -> UIAlertController{
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
        return alert
    }
    
    func showAlert(alert : UIAlertController){
        guard let _ = self.presentedViewController else {
            self.present(alert, animated: true, completion: nil)
            return
        }
    }
    
    func alertForProductRetriveAllInfo(result : RetrieveResults) -> UIAlertController{
        if let product = result.retrievedProducts.first{
            let priceString = product.localizedPrice!
            return alertWithTitle(title: product.localizedTitle, message: "\(product.localizedDescription) - \(priceString)")
        }
        else if let invalidProductID = result.invalidProductIDs.first{
            return alertWithTitle(title: "Could not retrive product info", message: "Invalid product identifier: \(invalidProductID)")
        }
        else {
            let errorString = result.error?.localizedDescription ?? "Unknown error"
            return alertWithTitle(title: "Could not retrive product info", message: errorString)
        }
    }
    
    func alertForPurchese(result : PurchaseResult) -> UIAlertController{
        switch result {
        case .success(let product):
            print("Purchase successful: \(product.productId) ")

            return alertWithTitle(title: "Thank you", message: "Purchase completed")

        case .error(let error):
            print("Purchase failed: \(error) ")
            switch error.code {

            case .unknown:
                return alertWithTitle(title: "Unknown error. Please contact support", message: "Unknown error. Please contact support")
            case .clientInvalid:
                return alertWithTitle(title: "Not allowed to make the payment", message: "Not allowed to make the payment")
            case .paymentCancelled:
                return alertWithTitle(title: "Payment cancelled", message: "")
            case .paymentInvalid:
                return alertWithTitle(title: "The purchase identifier was invalid", message: "The purchase identifier was invalid")
            case .paymentNotAllowed:
                return alertWithTitle(title: "The device is not allowed to make the payment", message: "The device is not allowed to make the payment")
            case .storeProductNotAvailable:
                return alertWithTitle(title: "The product is not available in the current storefront", message: "The product is not available in the current storefront")
            case .cloudServicePermissionDenied:
                return alertWithTitle(title: "Access to cloud service information is not allowed", message: "Access to cloud service information is not allowed")
            case .cloudServiceNetworkConnectionFailed:
                return alertWithTitle(title: "Could not connect to the network", message: "Could not connect to the network")
            case .cloudServiceRevoked:
                return alertWithTitle(title: "unknow", message: "unknown")
            }
        }
    }
    
    func alertForRestorePurchases(result : RestoreResults) -> UIAlertController{
        if result.restoreFailedPurchases.count > 0 {
            return alertWithTitle(title: "Restore Failed: \(result.restoreFailedPurchases)", message: "Restore Failed: \(result.restoreFailedPurchases)")
            
        }
        else if result.restoredPurchases.count > 0 {
            return alertWithTitle(title: "Restore Success: \(result.restoredPurchases)", message: "Restore Success: \(result.restoredPurchases)")
            
        }
        else {
            return alertWithTitle(title: "Nothing to restore", message: "Nothing to restore")
        }
    }
    
    func alertForVerifyReceipt(result : VerifyReceiptResult) -> UIAlertController{
        switch result{
        case .success( _):
                return alertWithTitle(title: "Receipt Verified", message: "Reciept verified remotly")
            case .error(let error):
                switch error {
                case .noReceiptData:
                    return alertWithTitle(title: "Reciept Verification", message: "No reciept data found, application will try to get a new one. Try Again.")
                default:
                    return alertWithTitle(title: "Reciept Verification", message: "Reciept verification failed")
                }
            
        }
    }
    
    func alertForVerifyPurchase(result: VerifyPurchaseResult) -> UIAlertController{
        switch result{
        case .purchased:
            return alertWithTitle(title: "Product is Purchased", message: "Product will not expire")
        case .notPurchased:
            return alertWithTitle(title: "Product not Purchased", message: "Product never purchesed")
        }
    }
    
    
}














