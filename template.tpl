___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "MACRO",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "Matomo Tag Settings",
  "categories": [
    "ANALYTICS"
  ],
  "description": "This variable allows you to setup the Trackify Matomo Analytics Pixel",
  "containerContexts": [
    "WEB"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "TEXT",
    "name": "matomoInstanceUrl",
    "displayName": "Matomo Instance URL",
    "simpleValueType": true,
    "valueValidators": [
      {
        "type": "NON_EMPTY"
      },
      {
        "type": "REGEX",
        "args": [
          "^https://.*"
        ]
      },
      {
        "type": "REGEX",
        "args": [
          ".*\\/$"
        ]
      }
    ],
    "help": "The web address of your Matomo Web Analytics Suite account.",
    "valueHint": "https://stats.example.com/ or https://your.matomo.cloud/"
  },
  {
    "type": "TEXT",
    "name": "matomoSiteId",
    "displayName": "Matomo Site ID",
    "simpleValueType": true,
    "valueValidators": [
      {
        "type": "NON_EMPTY"
      }
    ],
    "help": "The unique ID for your site in Matomo Web Analytics.",
    "valueHint": "1"
  },
  {
    "type": "TEXT",
    "name": "matomoAnalyticsDomains",
    "displayName": "Matomo Analytics Domains",
    "simpleValueType": true,
    "valueValidators": [
      {
        "type": "NON_EMPTY"
      },
      {
        "type": "TABLE_ROW_COUNT",
        "args": [
          1,
          32
        ]
      },
      {
        "type": "REGEX",
        "args": [
          "^https?://.*"
        ]
      },
      {
        "type": "REGEX",
        "args": [
          "^((?!,).)*$"
        ]
      }
    ],
    "help": "The domains tracked by Matomo Web Analytics code. You can add many URLs. They need to start with \"http://\" or \"https://\". Please specify one domain per line (without commas).",
    "textAsList": true,
    "valueHint": "https://example.com",
    "lineCount": 2
  },
  {
    "type": "SELECT",
    "name": "matomoVersion",
    "displayName": "Matomo Version",
    "macrosInSelect": true,
    "selectItems": [
      {
        "value": "3.3.0",
        "displayValue": "3.3.0"
      },
      {
        "value": "3.4.0",
        "displayValue": "3.4.0"
      },
      {
        "value": "3.5.1",
        "displayValue": "3.5.1"
      },
      {
        "value": "3.6.1",
        "displayValue": "3.6.1"
      },
      {
        "value": "3.7.0",
        "displayValue": "3.7.0"
      },
      {
        "value": "3.8.1",
        "displayValue": "3.8.1"
      },
      {
        "value": "3.9.1",
        "displayValue": "3.9.1"
      },
      {
        "value": "3.10.0",
        "displayValue": "3.10.0"
      },
      {
        "value": "3.11.0",
        "displayValue": "3.11.0"
      },
      {
        "value": "3.12.0",
        "displayValue": "3.12.0"
      },
      {
        "value": "3.13.6",
        "displayValue": "3.13.6"
      },
      {
        "value": "3.14.0",
        "displayValue": "3.14.0"
      },
      {
        "value": "3.14.0",
        "displayValue": "3.14.1"
      },
      {
        "value": "4.0.0",
        "displayValue": "4.0.0"
      },
      {
        "value": "4.0.5",
        "displayValue": "4.0.5"
      },
      {
        "value": "4.1.0",
        "displayValue": "4.1.0"
      },
      {
        "value": "4.1.1",
        "displayValue": "4.1.1"
      },
      {
        "value": "4.2.0",
        "displayValue": "4.2.0"
      },
      {
        "value": "4.2.1",
        "displayValue": "4.2.1"
      },
      {
        "value": "4.3.0",
        "displayValue": "4.3.0"
      },
      {
        "value": "4.3.1",
        "displayValue": "4.3.1"
      },
      {
        "value": "4.4.0",
        "displayValue": "4.4.0"
      },
      {
        "value": "4.4.1",
        "displayValue": "4.4.1"
      },
      {
        "value": "4.5.0",
        "displayValue": "4.5.0"
      }
    ],
    "simpleValueType": true,
    "defaultValue": "4.5.0"
  },
  {
    "type": "GROUP",
    "name": "dataCollectionSettings",
    "displayName": "Data collection",
    "groupStyle": "ZIPPY_CLOSED",
    "subParams": [
      {
        "type": "CHECKBOX",
        "name": "setUserID",
        "checkboxText": "Set a user ID",
        "simpleValueType": true,
        "help": "If turned on, you\u0027ll recognize visitors by their user ID. A user ID can be a visitor\u0027s email, username or some other unique identifier. We store IDs under the dimension called user ID. You can use this dimension in custom reports, segments and filters."
      },
      {
        "type": "TEXT",
        "name": "userID",
        "displayName": "User ID",
        "simpleValueType": true,
        "enablingConditions": [
          {
            "paramName": "setUserID",
            "paramValue": true,
            "type": "EQUALS"
          }
        ],
        "valueValidators": [
          {
            "type": "NON_EMPTY",
            "errorMessage": "Please provide a User ID. You can use a variable that stores the information."
          }
        ]
      },
      {
        "type": "CHECKBOX",
        "name": "enableLinkTracking",
        "checkboxText": "Outlinks and downloads",
        "simpleValueType": true,
        "help": "If turned on, you\u0027ll count outlinks and downloads. Outlinks are links that take the visitor outside your website. Downloads are links to all kind of files on your website. You\u0027ll see collected data under Analytics \u003e Reports \u003e Outlinks or Analytics \u003e Reports \u003e Downloads.",
        "defaultValue": true
      },
      {
        "type": "CHECKBOX",
        "name": "enableContentTracking",
        "checkboxText": "Interactions with popups and content",
        "simpleValueType": true,
        "help": "If turned on, you\u0027ll count times when people see and interact with your popup or content. Impressions and interactions are counted for: (1) popups added under Tag Manager \u003e Tags \u003e Add new tag \u003e Custom popup, (2) content added under Tag Manager \u003e Tags \u003e Add new tag \u003e Custom content, (3) any page content you tag in your website\u0027s code.  You\u0027ll see collected data under Analytics \u003e Reports \u003e Content performance.",
        "subParams": [
          {
            "type": "RADIO",
            "name": "contentTrackingOptions",
            "radioItems": [
              {
                "value": "trackAllContentImpressions",
                "displayValue": "Content loads on the page"
              },
              {
                "value": "trackVisibleContentImpressions",
                "displayValue": "Visitor sees the content"
              }
            ],
            "simpleValueType": true,
            "enablingConditions": [
              {
                "paramName": "enableContentTracking",
                "paramValue": true,
                "type": "EQUALS"
              }
            ]
          }
        ]
      },
      {
        "type": "CHECKBOX",
        "name": "countSessionsPrecisely",
        "checkboxText": "Count session time precisely",
        "simpleValueType": true,
        "help": "If turned on, you’ll measure the end of a session more accurately. Session time is the period between opening the first page and closing the last one, but it’s hard to know exactly when a visitor closes the last page. This option will send ping requests to check if a visitor is still on the last page."
      },
      {
        "type": "CHECKBOX",
        "name": "enableCrossDomainLinking",
        "checkboxText": "Recognize a visitor across domains",
        "simpleValueType": true,
        "help": "If turned on, the visitor who goes from one website to the other will be recognized as the same visitor. Sessions that would be treated as separate for each website, will be treated as one session. This option works only for domains that use the same tracking code and are added under Administration \u003e Websites \u0026 apps \u003e URLs. We add the pk_vid parameter to the page URL to pass the visitor ID between domains."
      },
      {
        "type": "CHECKBOX",
        "name": "setCookieDomain",
        "checkboxText": "Recognize a visitor across subdomains",
        "simpleValueType": true,
        "help": "If turned on, the visitor who goes from one subdomain to the other will be recognized as the same visitor. Sessions that would be treated as separate for each subdomain, will be treated as one session. This option works only for subdomains that use the same tracking code. You need to pick a domain where you\u0027ll store a cookie with the visitor ID."
      },
      {
        "type": "TEXT",
        "name": "cookieDomain",
        "displayName": "Store a cookie on this domain",
        "simpleValueType": true,
        "enablingConditions": [
          {
            "paramName": "setCookieDomain",
            "paramValue": true,
            "type": "EQUALS"
          }
        ],
        "valueValidators": [
          {
            "type": "NON_EMPTY",
            "errorMessage": "Please provide a valid URL. It can contain wildcards."
          }
        ]
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "privacySettings",
    "displayName": "Privacy",
    "groupStyle": "ZIPPY_CLOSED",
    "subParams": [
      {
        "type": "CHECKBOX",
        "name": "useGoogleConsentAPI",
        "checkboxText": "Use new Google Consent API",
        "simpleValueType": true,
        "help": "Google use Consent API variable \u0027analytics_storage\u0027 with value \u0027granted\u0027 to allow, that analytics tools can use an save cookie to client browsers, we use this to trigger Matomo to use cookies for client tracking"
      },
      {
        "type": "CHECKBOX",
        "name": "useCookies",
        "checkboxText": "Use visitor cookies",
        "simpleValueType": true,
        "help": "If turned off, you won’t set visitor cookies like _pk_id.* and _pk_ses.* that are responsible for recognizing visitors and their sessions.",
        "defaultValue": true
      },
      {
        "type": "CHECKBOX",
        "name": "setSecureCookie",
        "checkboxText": "Use secure cookies",
        "simpleValueType": true,
        "help": "If turned on, you’ll receive information from first-party cookies over a secure connection. Only websites with the HTTPS protocol will be able to access these cookies."
      },
      {
        "type": "CHECKBOX",
        "name": "setVisitorCookieTimeout",
        "checkboxText": "Remove the visitor cookie at custom time",
        "simpleValueType": true,
        "help": "The visitor cookie (_pk_id.*) is removed after 13 months by default. You can delete it at a different time."
      },
      {
        "type": "SELECT",
        "name": "visitorCookieTimeout",
        "selectItems": [
          {
            "value": 300,
            "displayValue": "5 minutes"
          },
          {
            "value": 600,
            "displayValue": "10 minutes"
          },
          {
            "value": 900,
            "displayValue": "15 minutes"
          },
          {
            "value": 1800,
            "displayValue": "30 minutes"
          },
          {
            "value": 3600,
            "displayValue": "1 hour"
          },
          {
            "value": 86400,
            "displayValue": "24 hours"
          },
          {
            "value": 604800,
            "displayValue": "1 week"
          },
          {
            "value": 2419200,
            "displayValue": "1 month"
          },
          {
            "value": 14515200,
            "displayValue": "6 months"
          },
          {
            "value": 29030400,
            "displayValue": "12 months"
          },
          {
            "value": 58060800,
            "displayValue": "24 months"
          }
        ],
        "simpleValueType": true,
        "enablingConditions": [
          {
            "paramName": "setVisitorCookieTimeout",
            "paramValue": true,
            "type": "EQUALS"
          }
        ]
      },
      {
        "type": "CHECKBOX",
        "name": "setSessionCookieTimeout",
        "checkboxText": "Remove the session cookie at custom time",
        "simpleValueType": true,
        "help": "The session cookie (_pk_ses.*) is removed after 30 minutes by default. You can delete it at a different time."
      },
      {
        "type": "SELECT",
        "name": "sessionCookieTimeout",
        "selectItems": [
          {
            "value": 300,
            "displayValue": "5 minutes"
          },
          {
            "value": 600,
            "displayValue": "10 minutes"
          },
          {
            "value": 900,
            "displayValue": "15 minutes"
          },
          {
            "value": 1800,
            "displayValue": "30 minutes"
          },
          {
            "value": 3600,
            "displayValue": "1 hour"
          },
          {
            "value": 86400,
            "displayValue": "24 hours"
          },
          {
            "value": 604800,
            "displayValue": "1 week"
          },
          {
            "value": 2419200,
            "displayValue": "1 month"
          },
          {
            "value": 14515200,
            "displayValue": "6 months"
          },
          {
            "value": 29030400,
            "displayValue": "12 months"
          },
          {
            "value": 58060800,
            "displayValue": "24 months"
          }
        ],
        "simpleValueType": true,
        "enablingConditions": [
          {
            "paramName": "setSessionCookieTimeout",
            "paramValue": true,
            "type": "EQUALS"
          }
        ]
      },
      {
        "type": "CHECKBOX",
        "name": "useCookieConsent",
        "checkboxText": "Use Matomo cookie consent functions",
        "simpleValueType": true,
        "subParams": [
          {
            "type": "TEXT",
            "name": "useCookieConsentGiven",
            "displayName": "Cookie Consent Given Variable",
            "simpleValueType": true,
            "enablingConditions": [
              {
                "paramName": "useCookieConsent",
                "paramValue": true,
                "type": "EQUALS"
              }
            ],
            "help": "variable should be \"true\""
          },
          {
            "type": "SELECT",
            "name": "useRememberCookieConsentGiven",
            "displayName": "remember that Matomo cookie consent was given",
            "macrosInSelect": true,
            "selectItems": [
              {
                "value": true,
                "displayValue": "True"
              },
              {
                "value": false,
                "displayValue": "False"
              }
            ],
            "simpleValueType": true,
            "enablingConditions": [
              {
                "paramName": "useCookieConsent",
                "paramValue": true,
                "type": "EQUALS"
              }
            ],
            "help": "Should be true or false"
          }
        ]
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "otherOptions",
    "displayName": "Other options",
    "groupStyle": "ZIPPY_CLOSED",
    "subParams": [
      {
        "type": "CHECKBOX",
        "name": "enableJSErrorTracking",
        "checkboxText": "Detect JavaScript errors",
        "simpleValueType": true,
        "help": "If turned on, you\u0027ll record all kinds of JavaScript errors on your website. The errors will be saved as custom events with the error type and the URL of the page where they occurred. You\u0027ll see them under Analytics \u003e Reports \u003e Custom events or if you create a custom report."
      },
      {
        "type": "CHECKBOX",
        "name": "dontTrackPageViews",
        "checkboxText": "Track page views manually",
        "simpleValueType": true,
        "help": "If turned on, you can use a virtual page view tag or custom JavaScript code to track page views manually."
      },
      {
        "type": "CHECKBOX",
        "name": "useAlternativeCDNSource",
        "checkboxText": "Use an alternative CDN Source",
        "simpleValueType": true,
        "help": "If turned on, the tracking code we use Cloudflare CDN instead of jsdelivr.net"
      }
    ]
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

return {
	'matomoInstanceURL': data.matomoInstanceURL,
	'matomoSiteId': data.matomoSiteId,
	'matomoAnalyticsDomains': data.matomoAnalyticsDomains,
	'matomoVersion': data.matomoVersion,
	'matomoSetUserID': data.setUserID,
	'matomoUserID': data.userID,
	'matomoEnableLinkTracking': data.enableLinkTracking,
	'matomoEnableContentTracking': data.enableContentTracking,
	'matomoContentTrackingOptions': data.contentTrackingOptions,
	'matomoCountSessionsPrecisely': data.countSessionsPrecisely,
	'matomoEnableCrossDomainLinking': data.enableCrossDomainLinking,
	'matomoSetCookieDomain': data.setCookieDomain,
	'matomoCookieDomain': data.cookieDomain,
	'matomoUseGoogleConsentAPI': data.useGoogleConsentAPI,
	'matomoUseCookies': data.useCookies,
	'matomoSetSecureCookie': data.setSecureCookie,
	'matomoSetVisitorCookieTimeout': data.setVisitorCookieTimeout,
	'matomoVisitorCookieTimeout': data.visitorCookieTimeout,
	'matomoSetSessionCookieTimeout': data.setSessionCookieTimeout,
	'matomoUseCookieConsent': data.useCookieConsent,
	'matomoUseCookieConsentGiven': data.useCookieConsentGiven,
	'matomoUseRememberCookieConsentGiven': data.useRememberCookieConsentGiven,
	'matomoEnableJSErrorTracking': data.enableJSErrorTracking,
	'matomoDontTrackPageViews': data.dontTrackPageViews,
	'matomoUseAlternativeCDNSource': data.useAlternativeCDNSource,
};


___TESTS___

scenarios: []


___NOTES___

