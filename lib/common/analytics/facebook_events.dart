class FacebookEvents {
  // Standard Events
  static const appOpen = "fb_mobile_activate_app";
  static const login = "fb_mobile_login";
  static const register = "fb_mobile_complete_registration";
  static const search = "fb_mobile_search";
  static const wishlistAdded = "fb_mobile_add_to_wishlist";

  // Mobile Mandir Custom Events
  static const rewardClaimed = "reward_claimed";

  static const sewaPageOpen = "sewa_page_open";
  static const sewaStarted = "fb_mobile_initiated_checkout";
  static const sewaPriceSelected = "sewa_price_selected";

  // Payment success hone par
  static const sewaCompleted = "fb_mobile_purchase";

  static const jaapPageOpen = "jaap_page_open";
  static const jaapStarted = "jaap_started";
  static const jaapCompleted = "jaap_completed";
  static const jaapResumed = "jaap_resumed";

  static const aartiPlayed = "aarti_played";
  static const panchangChecked = "panchang_checked";

  static const logout = "logout";

  static const usedVoiceSearch = "used_voice_search";

  static const pitruPaksha = "pitru-paksha";
}