#import <Cordova/CDV.h>
@import Stripe;

@interface CordovaStripe : CDVPlugin
@property (nonatomic, retain) STPAPIClient *client;
@property (nonatomic, retain) STPRedirectContext *redirectContext;

- (void) setPublishableKey:(CDVInvokedUrlCommand *) command;
- (void) createCardToken:(CDVInvokedUrlCommand *) command;
- (void) check3DSecureSupport:(CDVInvokedUrlCommand *) command;
- (void) validateCardNumber: (CDVInvokedUrlCommand *) command;
- (void) validateExpiryDate: (CDVInvokedUrlCommand *) command;
- (void) validateCVC: (CDVInvokedUrlCommand *) command;
- (void) getCardType: (CDVInvokedUrlCommand *) command;
- (void) createBankAccountToken: (CDVInvokedUrlCommand *) command;
- (void) handleCardAction: (CDVInvokedUrlCommand *)command;

@end
