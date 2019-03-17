import Foundation

typealias CompletionHandler = (_ Success: Bool) -> ()
// Segues
let TO_LOGIN = "toLogin"
let TO_Account = "toAccount"
let UNWIND = "unwindToChannel"
let TO_AVATAR_PICKER = "toAvatarPicker"

// User Defaults
let LOGGED_IN_KEY = "loggedIn"
let TOKEN_KEY = "token"
let USER_EMAIL = "userEmail"

// Colors
let smackPurplePlaceholder = #colorLiteral(red: 0.3647058824, green: 0.4045833051, blue: 0.8775706887, alpha: 0.5)

// Notification Constants
let NOTIF_USER_DATA_DID_CHANGE = Notification.Name("notifUserDataChanged")

// URL Constants
let BASE_URL = "https://chattestshatt.herokuapp.com/v1/"
let URL_REGISTER = "\(BASE_URL)account/register"
let URL_LOGIN = "\(BASE_URL)account/login"
let URL_USER_ADD = "\(BASE_URL)user/add"
let URL_USER_BY_EMAIL = "\(BASE_URL)user/byEmail/"
let URL_GET_CHANNELS = "\(BASE_URL)channel"
// Headers
let HEADER = [
    "Contact-Type": "application/json; charset=utf-8"
]
let BEARER_HEADER = [
    "Authorization": "Bearer \(AuthService.instance.authToken)",
    "Contact-Type": "application/json; charset=utf-8"
]
