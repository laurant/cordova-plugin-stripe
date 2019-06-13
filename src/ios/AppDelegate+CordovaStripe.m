#import "AppDelegate+CordovaStripe.h"
#import <objc/runtime.h>

@implementation AppDelegate (CordovaStripe)

- (BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary<UIApplicationOpenURLOptionsKey,id> *)options {
    BOOL stripeHandled = [Stripe handleStripeURLCallbackWithURL:url];
    return stripeHandled ? YES : [super openURL:url options:options];
}

- (BOOL)application:(UIApplication *)application continueUserActivity:(NSUserActivity *)userActivity restorationHandler:(void (^)(NSArray * _Nullable))restorationHandler {
    if (userActivity.activityType == NSUserActivityTypeBrowsingWeb) {
        if (userActivity.webpageURL) {
            BOOL stripeHandled = [Stripe handleStripeURLCallbackWithURL:url];
            return stripeHandled ? YES : [super continueUserActivity:userActivity restorationHandler:restorationHandler];
        }
    }
}

@end
