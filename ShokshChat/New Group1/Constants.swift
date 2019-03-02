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

// URL Constants
let BASE_URL = "https://chattestshatt.herokuapp.com/v1/"
let URL_REGISTER = "\(BASE_URL)account/register"
let URL_LOGIN = "\(BASE_URL)account/login"
let URL_USER_ADD = "\(BASE_URL)user/add"

// Headers
let HEADER = [
    "Contact-Type": "application/json; charset=utf-8"
]
