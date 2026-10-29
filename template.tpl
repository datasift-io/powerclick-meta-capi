___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "TAG",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "Facebook Conversion API \u2014 PowerClick",
  "categories": [
    "CONVERSIONS",
    "ADVERTISING",
    "ATTRIBUTION"
  ],
  "brand": {
    "id": "brand_dummy",
    "displayName": "PowerClick"
  },
  "description": "Tag that send the event data from the GA4/Data clients to Facebook Conversion API. PowerClick build of Stape's template (stape-io/facebook-tag): also reports each platform response to PowerClick.",
  "containerContexts": [
    "SERVER"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "GROUP",
    "name": "configGroup",
    "subParams": [
      {
        "type": "SELECT",
        "name": "inheritEventName",
        "displayName": "Event Name Setup Method",
        "selectItems": [
          {
            "value": "inherit",
            "displayValue": "Inherit from client"
          },
          {
            "value": "override",
            "displayValue": "Override"
          }
        ],
        "simpleValueType": true,
        "defaultValue": "inherit",
        "subParams": [
          {
            "type": "RADIO",
            "name": "eventName",
            "radioItems": [
              {
                "value": "standard",
                "displayValue": "Standard",
                "subParams": [
                  {
                    "type": "SELECT",
                    "name": "eventNameStandard",
                    "macrosInSelect": false,
                    "selectItems": [
                      {
                        "value": "PageView",
                        "displayValue": "PageView"
                      },
                      {
                        "value": "AddPaymentInfo",
                        "displayValue": "AddPaymentInfo"
                      },
                      {
                        "value": "AddToCart",
                        "displayValue": "AddToCart"
                      },
                      {
                        "value": "AddToWishlist",
                        "displayValue": "AddToWishlist"
                      },
                      {
                        "value": "AppendValue",
                        "displayValue": "AppendValue"
                      },
                      {
                        "value": "CompleteRegistration",
                        "displayValue": "CompleteRegistration"
                      },
                      {
                        "value": "Contact",
                        "displayValue": "Contact"
                      },
                      {
                        "value": "CustomizeProduct",
                        "displayValue": "CustomizeProduct"
                      },
                      {
                        "value": "Donate",
                        "displayValue": "Donate"
                      },
                      {
                        "value": "FindLocation",
                        "displayValue": "FindLocation"
                      },
                      {
                        "value": "InitiateCheckout",
                        "displayValue": "InitiateCheckout"
                      },
                      {
                        "value": "Lead",
                        "displayValue": "Lead"
                      },
                      {
                        "value": "Purchase",
                        "displayValue": "Purchase"
                      },
                      {
                        "value": "Schedule",
                        "displayValue": "Schedule"
                      },
                      {
                        "value": "Search",
                        "displayValue": "Search"
                      },
                      {
                        "value": "StartTrial",
                        "displayValue": "StartTrial"
                      },
                      {
                        "value": "SubmitApplication",
                        "displayValue": "SubmitApplication"
                      },
                      {
                        "value": "Subscribe",
                        "displayValue": "Subscribe"
                      },
                      {
                        "value": "ViewContent",
                        "displayValue": "ViewContent"
                      }
                    ],
                    "simpleValueType": true,
                    "valueValidators": [
                      {
                        "type": "NON_EMPTY"
                      }
                    ]
                  }
                ]
              },
              {
                "value": "custom",
                "displayValue": "Custom",
                "subParams": [
                  {
                    "type": "TEXT",
                    "name": "eventNameCustom",
                    "simpleValueType": true,
                    "valueValidators": [
                      {
                        "type": "NON_EMPTY"
                      }
                    ]
                  }
                ]
              }
            ],
            "simpleValueType": true,
            "defaultValue": "standard",
            "enablingConditions": [
              {
                "paramName": "inheritEventName",
                "paramValue": "override",
                "type": "EQUALS"
              }
            ],
            "displayName": "Event Type"
          }
        ],
        "help": "<b>Inherit from client</b>\n<br/>\nIf the incoming request follows the <b>Google Analytics 4 (GA4)</b> schema, the following mappings will be applied to convert GA4 <i>Event Names</i> into the Conversion API <i>Event Name</i> equivalent:\n<br/>\n<ul>\n<li><i>page_view</i> \u2192 <i>PageView</i></li>\n<li><i>gtm.dom</i> \u2192 <i>PageView</i></li>\n<li><i>add_payment_info</i> \u2192 <i>AddPaymentInfo</i></li>\n<li><i>add_to_cart</i> \u2192 <i>AddToCart</i></li>\n<li><i>add_to_wishlist</i> \u2192 <i>AddToWishlist</i></li>\n<li><i>sign_up</i> \u2192 <i>CompleteRegistration</i></li>\n<li><i>begin_checkout</i> \u2192 <i>InitiateCheckout</i></li>\n<li><i>generate_lead</i> \u2192 <i>Lead</i></li>\n<li><i>purchase</i> \u2192 <i>Purchase</i></li>\n<li><i>search</i> \u2192 <i>Search</i></li>\n<li><i>view_item</i> \u2192 <i>ViewContent</i></li>\n<li><i>view_item_list</i> \u2192 <i>ViewContent</i> (conditional)</li>\n<li><i>contact</i> \u2192 <i>Contact</i></li>\n<li><i>customize_product</i> \u2192 <i>CustomizeProduct</i></li>\n<li><i>donate</i> \u2192 <i>Donate</i></li>\n<li><i>find_location</i> \u2192 <i>FindLocation</i></li>\n<li><i>schedule</i> \u2192 <i>Schedule</i></li>\n<li><i>start_trial</i> \u2192 <i>StartTrial</i></li>\n<li><i>submit_application</i> \u2192 <i>SubmitApplication</i></li>\n<li><i>subscribe</i> \u2192 <i>Subscribe</i></li>\n<li><i>gtm4wp.addProductToCartEEC</i> \u2192 <i>AddToCart</i></li>\n<li><i>gtm4wp.productClickEEC</i> \u2192 <i>ViewContent</i></li>\n<li><i>gtm4wp.checkoutOptionEEC</i> \u2192 <i>InitiateCheckout</i></li>\n<li><i>gtm4wp.checkoutStepEEC</i> \u2192 <i>AddPaymentInfo</i></li>\n<li><i>gtm4wp.orderCompletedEEC</i> \u2192 <i>Purchase</i></li>\n</ul>\n<br/>\nPlease note that it provides partial event mapping. Not all GA4 events can be mapped to Conversion API Event Name."
      },
      {
        "type": "SELECT",
        "name": "actionSource",
        "displayName": "Action Source",
        "selectItems": [
          {
            "value": "website",
            "displayValue": "Website"
          },
          {
            "value": "email",
            "displayValue": "Email"
          },
          {
            "value": "app",
            "displayValue": "App"
          },
          {
            "value": "phone_call",
            "displayValue": "Phone Call"
          },
          {
            "value": "chat",
            "displayValue": "Chat"
          },
          {
            "value": "physical_store",
            "displayValue": "Physical Store"
          },
          {
            "value": "system_generated",
            "displayValue": "System Generated"
          },
          {
            "value": "business_messaging",
            "displayValue": "Business Messaging"
          },
          {
            "value": "other",
            "displayValue": "Other"
          }
        ],
        "simpleValueType": true,
        "valueValidators": [
          {
            "type": "NON_EMPTY"
          }
        ],
        "defaultValue": "website",
        "help": "<b>Email</b> \u2014 Conversion happened over email.\n<br/>\n<b>Website</b> \u2014 Conversion was made on your website.\n<br/>\n<b>App</b> \u2014 Conversion was made on your mobile app.\n<br/>\n<b>Phone Call</b> \u2014 Conversion was made over the phone.\n<br/>\n<b>Chat</b> \u2014 Conversion was made via a messaging app, SMS, or online messaging feature.\n<br/>\n<b>Physical Store</b> \u2014 Conversion was made in person at your physical store, helping to optimize your omni-channel marketing strategy.\n<br/>\n<b>System Generated</b> \u2014 Conversion happened automatically, such as a subscription renewal set to auto-pay, often linked with CRM CAPI for Meta Lead Ads.\n<br/>\n<b>Business Messaging</b> \u2014 Conversion was made from ads that click to Messenger, Instagram or WhatsApp.\n<br/> \n<b>Other</b> \u2014 Conversion happened in a way that is not listed.",
        "alwaysInSummary": true
      },
      {
        "type": "SELECT",
        "name": "messaging_channel",
        "displayName": "Messaging Channel",
        "macrosInSelect": false,
        "selectItems": [
          {
            "value": "messenger",
            "displayValue": "Messenger"
          },
          {
            "value": "whatsapp",
            "displayValue": "WhatsApp"
          },
          {
            "value": "instagram",
            "displayValue": "Instagram"
          }
        ],
        "simpleValueType": true,
        "defaultValue": "messenger",
        "enablingConditions": [
          {
            "paramName": "actionSource",
            "paramValue": "business_messaging",
            "type": "EQUALS"
          }
        ],
        "valueValidators": [
          {
            "type": "NON_EMPTY"
          }
        ],
        "alwaysInSummary": true
      },
      {
        "type": "TEXT",
        "name": "pixelId",
        "displayName": "Facebook Pixel ID",
        "simpleValueType": true,
        "valueValidators": [
          {
            "type": "NON_EMPTY"
          }
        ],
        "help": "Set to a valid Facebook Pixel ID."
      },
      {
        "type": "TEXT",
        "name": "accessToken",
        "displayName": "API Access Token",
        "simpleValueType": true,
        "help": "Set to your Facebook API Access Token. See <a href=\"https://developers.facebook.com/docs/marketing-api/server-side-api/get-started#access-token\" target=\"_blank\">here</a> for more information.",
        "valueValidators": [
          {
            "type": "NON_EMPTY"
          }
        ]
      },
      {
        "type": "CHECKBOX",
        "name": "enableMultipixelSetup",
        "checkboxText": "Add Multiple Facebook Pixel IDs",
        "simpleValueType": true,
        "help": "Add one <i>Facebook Pixel ID</i> and one <i>Access Token</i> per line.",
        "subParams": [
          {
            "type": "SIMPLE_TABLE",
            "name": "pixelIdAndAccessTokenTable",
            "simpleTableColumns": [
              {
                "defaultValue": "",
                "displayName": "Facebook Pixel ID",
                "name": "pixelId",
                "type": "TEXT",
                "valueValidators": [
                  {
                    "type": "NON_EMPTY"
                  }
                ]
              },
              {
                "defaultValue": "",
                "displayName": "API Access Token",
                "name": "accessToken",
                "type": "TEXT",
                "valueValidators": [
                  {
                    "type": "NON_EMPTY"
                  }
                ]
              }
            ],
            "enablingConditions": [
              {
                "paramName": "enableMultipixelSetup",
                "paramValue": true,
                "type": "EQUALS"
              }
            ],
            "newRowButtonText": "Add Pixel ID"
          }
        ],
        "enablingConditions": [
          {
            "paramName": "useAppSecretProof",
            "paramValue": true,
            "type": "NOT_EQUALS"
          }
        ]
      },
      {
        "type": "TEXT",
        "name": "testId",
        "displayName": "Test ID",
        "simpleValueType": true,
        "help": "Provide a Test ID if you want to test server-side events in the Test Events feature of Events Manager.\n<br/>\nIt automatically uses the value in <i>eventData.test_event_code</i>, if present.",
        "valueHint": "TEST123"
      },
      {
        "type": "SELECT",
        "name": "overrideCookieDomain",
        "displayName": "Override the cookie domain",
        "macrosInSelect": true,
        "selectItems": [
          {
            "value": false,
            "displayValue": "False"
          },
          {
            "value": true,
            "displayValue": "True"
          }
        ],
        "simpleValueType": true,
        "subParams": [
          {
            "type": "TEXT",
            "name": "overridenCookieDomain",
            "displayName": "Cookie Domain",
            "simpleValueType": true,
            "enablingConditions": [
              {
                "paramName": "overrideCookieDomain",
                "paramValue": false,
                "type": "NOT_EQUALS"
              }
            ],
            "help": "Enable this option to override the cookie domain.<br>Enter your website's top-level domain as a fixed value (e.g., example.com). <br> If left as \"auto\", the top-level domain will be automatically determined using the following priority: <ul> <li>Top-level domain of the <i>Forwarded</i> header (if present).</li> <li>Top-level domain of the <i>X-Forwarded-Host</i> header (if present).</li> <li>Top-level domain of the <i>Host</i> header.</li> </ul>",
            "defaultValue": "auto",
            "valueHint": "example.com",
            "alwaysInSummary": true
          }
        ],
        "defaultValue": false
      },
      {
        "type": "CHECKBOX",
        "name": "generateFbp",
        "checkboxText": "Generate _fbp cookie if it does not exist",
        "simpleValueType": true,
        "defaultValue": true,
        "alwaysInSummary": true
      },
      {
        "type": "CHECKBOX",
        "name": "useHttpOnlyCookie",
        "checkboxText": "Use HttpOnly cookies for _fbc and _fbp",
        "simpleValueType": true,
        "help": "If enabled, Forbids JavaScript from accessing the <i>_fbc</i> and <i>_fbp</i> cookies."
      },
      {
        "type": "CHECKBOX",
        "name": "enableEventEnhancement",
        "checkboxText": "Enable Event Enhancement",
        "simpleValueType": true,
        "help": "Enable Use of HTTP Only Secure Cookie (gtmeec) to Enhance Event Data.",
        "defaultValue": true,
        "alwaysInSummary": true
      },
      {
        "type": "CHECKBOX",
        "name": "useOptimisticScenario",
        "checkboxText": "Use Optimistic Scenario",
        "simpleValueType": true,
        "help": "The tag will call gtmOnSuccess() without waiting for a response from the API. This will speed up sGTM response time however your tag will always return the status fired successfully even in case it is not."
      }
    ]
  },
  {
    "displayName": "Server Event Data Override",
    "name": "serverEventDataListGroup",
    "groupStyle": "ZIPPY_OPEN_ON_PARAM",
    "type": "GROUP",
    "subParams": [
      {
        "type": "LABEL",
        "name": "serverEventDataLabel",
        "displayName": "Check <a href=\"https://developers.facebook.com/docs/marketing-api/conversions-api/parameters/server-event\">this documentation</a> for more details on which parameters you can override.<br/><br/>"
      },
      {
        "type": "CHECKBOX",
        "name": "autoMapServerEventData",
        "checkboxText": "Automap Server Event Data",
        "simpleValueType": true,
        "help": "If enabled, the tag will attempt to automatically map parameters from your event data.\n<br/><br/>\nAny value you manually enter in a field below will always override the auto-mapped value.\n<br/><br/>\nDefault mappings:\n<ul>\n<li>Source URL:\n<ul>\n<li><i>eventData.page_location</i></li>\n</ul>\n</li>\n<li>Referrer URL:\n<ul>\n<li><i>eventData.page_referrer</i></li>\n</ul>\n</li>\n<li>Event ID:\n<ul>\n<li><i>eventData.event_id</i></li>\n<li><i>eventData.transaction_id</i></li>\n</ul>\n</li>\n</ul>",
        "defaultValue": true
      },
      {
        "name": "serverEventDataList",
        "simpleTableColumns": [
          {
            "valueValidators": [
              {
                "type": "NON_EMPTY"
              }
            ],
            "defaultValue": "event_id",
            "displayName": "Property Name",
            "name": "name",
            "isUnique": true,
            "type": "SELECT",
            "selectItems": [
              {
                "value": "event_time",
                "displayValue": "Event Time"
              },
              {
                "value": "event_source_url",
                "displayValue": "Source URL"
              },
              {
                "value": "opt_out",
                "displayValue": "Opt Out"
              },
              {
                "value": "event_id",
                "displayValue": "Event ID"
              },
              {
                "value": "data_processing_options",
                "displayValue": "Data Processing Options"
              },
              {
                "value": "data_processing_options_country",
                "displayValue": "Data Processing Options Country"
              },
              {
                "value": "data_processing_options_state",
                "displayValue": "Data Processing Options State"
              },
              {
                "value": "referrer_url",
                "displayValue": "Referrer URL"
              }
            ]
          },
          {
            "defaultValue": "",
            "displayName": "Property Value",
            "name": "value",
            "type": "TEXT"
          }
        ],
        "type": "SIMPLE_TABLE",
        "newRowButtonText": "Add property"
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "originalEventDataListGroup",
    "displayName": "Original Event Data",
    "groupStyle": "ZIPPY_OPEN_ON_PARAM",
    "subParams": [
      {
        "type": "LABEL",
        "name": "originalEventDataLabel",
        "displayName": "Check <a href=\"https://developers.facebook.com/docs/marketing-api/conversions-api/parameters/original-event\">this documentation</a> for more details on which parameters you can override.\n<br/>\nUse these parameters to identify the Original Event that happened at an earlier time. Then, use the <i>AppendValue</i> event and the other sections to supplement information the Original Event. This is useful for Value Optimization for Profit (using the <i>net_revenue</i> parameter), allowing you to report the final profit margin after the initial sale has occurred.\n<br/><br/>"
      },
      {
        "type": "SIMPLE_TABLE",
        "name": "originalEventDataList",
        "displayName": "",
        "simpleTableColumns": [
          {
            "defaultValue": "",
            "displayName": "Property Name",
            "name": "name",
            "type": "SELECT",
            "isUnique": true,
            "valueValidators": [
              {
                "type": "NON_EMPTY"
              }
            ],
            "selectItems": [
              {
                "value": "event_name",
                "displayValue": "Original Event Name"
              },
              {
                "value": "event_time",
                "displayValue": "Original Event Time"
              },
              {
                "value": "order_id",
                "displayValue": "Original Order ID"
              },
              {
                "value": "event_id",
                "displayValue": "Original Event ID"
              }
            ]
          },
          {
            "defaultValue": "",
            "displayName": "Property Value",
            "name": "value",
            "type": "TEXT",
            "valueValidators": [
              {
                "type": "NON_EMPTY"
              }
            ]
          }
        ],
        "valueValidators": [
          {
            "type": "NON_EMPTY"
          }
        ],
        "newRowButtonText": "Add property"
      }
    ],
    "enablingConditions": [
      {
        "paramName": "eventNameStandard",
        "paramValue": "AppendValue",
        "type": "EQUALS"
      },
      {
        "paramName": "eventNameCustom",
        "paramValue": "AppendValue",
        "type": "EQUALS"
      }
    ]
  },
  {
    "displayName": "User Data",
    "name": "userDataListGroup",
    "groupStyle": "ZIPPY_OPEN_ON_PARAM",
    "type": "GROUP",
    "subParams": [
      {
        "type": "LABEL",
        "name": "userDataLabel",
        "displayName": "User Data is your main <a href=\"https://www.facebook.com/business/help/765081237991954?id=818859032317965\">Event Match Quality (EMQ) contributor</a>. Matched events improve ad targeting by connecting actions to Meta accounts. Events with better match quality can lead to lower costs per action.\n<br/>\nCheck <a href=\"https://developers.facebook.com/docs/marketing-api/server-side-api/parameters/user-data\">this documentation</a> for more details on accepted User Data parameters.\n<br/>\nThe tag will automatically hash parameters that need it, pre-hashed data is also accepted.\n<br/><br/>"
      },
      {
        "type": "CHECKBOX",
        "name": "autoMapUserData",
        "checkboxText": "Automap User Data",
        "simpleValueType": true,
        "help": "If enabled, the tag will attempt to automatically map parameters from your event data.\n<br/><br/>\nAny value you manually enter in a field below will always override the auto-mapped value.\n<br/><br/>\nDefault mappings:\n<ul>\n<li><b>Click ID:</b> <i>fbclid URL parameter</i>, <i>_fbc cookie</i>, <i>eventData.common_cookie._fbc</i>, <i>eventData._fbc</i>, <i>eventData.fbc</i></li>\n<li><b>Browser ID:</b> <i>_fbp cookie</i>, <i>eventData.common_cookie._fbp</i>, <i>eventData._fbp</i>, <i>eventData.fbp</i></li>\n<li><b>Email:</b> <i>eventData.email</i>, <i>eventData.user_data.email_address</i>, <i>eventData.user_data.email</i>, <i>eventData.user_data.sha256_email_address</i></li>\n<li><b>Phone:</b> <i>eventData.phone</i>, <i>eventData.user_data.phone_number</i>, <i>eventData.user_data.phone</i></li>\n<li><b>First Name:</b> <i>eventData.firstName</i>, <i>eventData.FirstName</i>, <i>eventData.nameFirst</i>, <i>eventData.first_name</i>, <i>eventData.user_data.first_name</i>, <i>eventData.user_data.address[].first_name</i>, <i>eventData.user_data.address[].sha256_first_name</i></li>\n<li><b>Last Name:</b> <i>eventData.lastName</i>, <i>eventData.LastName</i>, <i>eventData.nameLast</i>, <i>eventData.last_name</i>, <i>eventData.user_data.last_name</i>, <i>eventData.user_data.address[].last_name</i>, <i>eventData.user_data.address[].sha256_last_name</i></li>\n<li><b>City:</b> <i>eventData.city</i>, <i>eventData.user_data.address[].city</i></li>\n<li><b>State:</b> <i>eventData.state</i>, <i>eventData.region</i>, <i>eventData.user_data.region</i>, <i>eventData.user_data.address[].region</i></li>\n<li><b>Zip:</b> <i>eventData.zip</i>, <i>eventData.postal_code</i>, <i>eventData.user_data.postal_code</i>, <i>eventData.user_data.address[].postal_code</i></li>\n<li><b>Country:</b> <i>eventData.countryCode</i>, <i>eventData.country</i>, <i>eventData.user_data.country</i>, <i>eventData.user_data.address[].country</i></li>\n<li><b>Gender:</b> <i>eventData.gender</i></li>\n<li><b>Date of Birth:</b> <i>eventData.db</i></li>\n<li><b>External ID:</b> <i>eventData.external_id</i>, <i>eventData.user_id</i>, <i>eventData.userId</i></li>\n<li><b>FB Login ID:</b> <i>eventData.fb_login_id</i></li>\n<li><b>Install ID:</b> <i>eventData.anon_id</i></li>\n<li><b>Mobile Advertising ID:</b> <i>eventData.madid</i></li>\n<li><b>Lead ID:</b> <i>eventData.lead_id</i>, <i>eventData.leadId</i></li>\n<li><b>Subscription ID:</b> <i>eventData.subscription_id</i>, <i>eventData.subscriptionId</i></li>\n<li><b>Plaintext IP Address:</b> <i>eventData.ip_override</i></li>\n<li><b>Client User Agent:</b> <i>eventData.user_agent</i></li>\n</ul>",
        "defaultValue": true
      },
      {
        "type": "SELECT",
        "name": "userDataObject",
        "displayName": "User Data Properties Object",
        "macrosInSelect": true,
        "selectItems": [],
        "simpleValueType": true,
        "help": "Provide an object with User Data Properties to merge with the fields below. Any conflicting properties will be overwritten.",
        "notSetText": "(not set)"
      },
      {
        "name": "userDataList",
        "simpleTableColumns": [
          {
            "valueValidators": [
              {
                "type": "NON_EMPTY"
              }
            ],
            "defaultValue": "em",
            "displayName": "Property Name",
            "name": "name",
            "isUnique": true,
            "type": "SELECT",
            "selectItems": [
              {
                "value": "em",
                "displayValue": "Email"
              },
              {
                "value": "ph",
                "displayValue": "Phone"
              },
              {
                "value": "ge",
                "displayValue": "Gender"
              },
              {
                "value": "db",
                "displayValue": "Date of Birth"
              },
              {
                "value": "ln",
                "displayValue": "Last Name"
              },
              {
                "value": "fn",
                "displayValue": "First Name"
              },
              {
                "value": "ct",
                "displayValue": "City"
              },
              {
                "value": "st",
                "displayValue": "State"
              },
              {
                "value": "zp",
                "displayValue": "Zip"
              },
              {
                "value": "country",
                "displayValue": "Country"
              },
              {
                "value": "external_id",
                "displayValue": "External ID"
              },
              {
                "value": "client_ip_address",
                "displayValue": "Client IP Address"
              },
              {
                "value": "client_user_agent",
                "displayValue": "Client User Agent"
              },
              {
                "value": "fbc",
                "displayValue": "Click ID"
              },
              {
                "value": "fbp",
                "displayValue": "Browser ID"
              },
              {
                "value": "subscription_id",
                "displayValue": "Subscription ID"
              },
              {
                "value": "lead_id",
                "displayValue": "Lead ID"
              },
              {
                "value": "fb_login_id",
                "displayValue": "FB Login ID"
              },
              {
                "value": "anon_id",
                "displayValue": "Install ID"
              },
              {
                "value": "madid",
                "displayValue": "Mobile Advertiser ID"
              },
              {
                "value": "page_id",
                "displayValue": "Page ID"
              },
              {
                "value": "page_scoped_user_id",
                "displayValue": "Page Scoped User ID"
              },
              {
                "value": "ctwa_clid",
                "displayValue": "Click to WhatsApp ID"
              },
              {
                "value": "ig_account_id",
                "displayValue": "IG Account ID"
              },
              {
                "value": "ig_sid",
                "displayValue": "Click to Instagram ID"
              }
            ]
          },
          {
            "defaultValue": "",
            "displayName": "Property Value",
            "name": "value",
            "type": "TEXT"
          }
        ],
        "type": "SIMPLE_TABLE",
        "newRowButtonText": "Add property"
      }
    ]
  },
  {
    "displayName": "App Data",
    "name": "appDataListGroup",
    "type": "GROUP",
    "subParams": [
      {
        "type": "LABEL",
        "name": "appDataLabel",
        "displayName": "Check <a href=\"https://developers.facebook.com/docs/marketing-api/conversions-api/parameters/app-data\">this documentation</a> for more details on which parameters you can override.\n<br/><br/>"
      },
      {
        "type": "CHECKBOX",
        "name": "autoMapAppData",
        "checkboxText": "Automap App Data",
        "simpleValueType": true,
        "help": "If enabled, the tag will attempt to automatically map parameters from your event data.\n<br/><br/>\nAny value you manually enter in a field below will always override the auto-mapped value.\n<br/><br/>\nDefault mappings:\n<ul>\n<li>If <i>eventData.app_data</i> is an object, it is used directly.</li>\n<li>Otherwise:\n<ul>\n<li>Advertiser Tracking Enabled: <i>eventData.advertiser_tracking_enabled</i></li>\n<li>Application Tracking Enabled: <i>eventData.application_tracking_enabled</i></li>\n<li>Ext Info: <i>eventData.extinfo</i>, or built from <i>eventData[x-ga-platform]</i>, <i>eventData.app_id</i>, <i>eventData.app_version</i>, <i>eventData[x-ga-os_version]</i>, <i>eventData[x-ga-device_model]</i>, <i>eventData.language</i></li>\n<li>Campaign IDs: <i>eventData.campaign_ids</i></li>\n<li>Install Referrer: <i>eventData.install_referrer</i></li>\n<li>Installer Package: <i>eventData.installer_package</i></li>\n<li>URL Schemes: <i>eventData.url_schemes</i></li>\n<li>Vendor ID: <i>eventData.vendor_id</i></li>\n<li>Windows Attribution ID: <i>eventData.windows_attribution_id</i></li>\n</ul>\n</li>\n</ul>",
        "defaultValue": true
      },
      {
        "type": "SELECT",
        "name": "appDataObject",
        "displayName": "App Data Properties Object",
        "macrosInSelect": true,
        "selectItems": [],
        "simpleValueType": true,
        "help": "Provide an object with App Data Properties to merge with the fields below. Any conflicting properties will be overwritten.",
        "notSetText": "(not set)"
      },
      {
        "name": "appDataList",
        "simpleTableColumns": [
          {
            "valueValidators": [
              {
                "type": "NON_EMPTY"
              }
            ],
            "defaultValue": "",
            "displayName": "Property Name",
            "name": "name",
            "isUnique": true,
            "type": "SELECT",
            "selectItems": [
              {
                "value": "advertiser_tracking_enabled",
                "displayValue": "Advertiser Tracking Enabled"
              },
              {
                "value": "application_tracking_enabled",
                "displayValue": "Application Tracking Enabled"
              },
              {
                "value": "extinfo",
                "displayValue": "Ext Info"
              },
              {
                "value": "campaign_ids",
                "displayValue": "Campaign IDs"
              },
              {
                "value": "install_referrer",
                "displayValue": "Install Referrer"
              },
              {
                "value": "installer_package",
                "displayValue": "Installer Package"
              },
              {
                "value": "url_schemes",
                "displayValue": "URL Schemes"
              },
              {
                "value": "vendor_id",
                "displayValue": "Vendor ID"
              },
              {
                "value": "windows_attribution_id",
                "displayValue": "Windows Attribution ID"
              }
            ]
          },
          {
            "defaultValue": "",
            "displayName": "Property Value",
            "name": "value",
            "type": "TEXT"
          }
        ],
        "type": "SIMPLE_TABLE",
        "newRowButtonText": "Add property"
      }
    ],
    "enablingConditions": [
      {
        "paramName": "actionSource",
        "paramValue": "app",
        "type": "EQUALS"
      }
    ],
    "groupStyle": "ZIPPY_OPEN_ON_PARAM"
  },
  {
    "displayName": "Custom Data",
    "name": "customDataListGroup",
    "groupStyle": "ZIPPY_OPEN_ON_PARAM",
    "type": "GROUP",
    "subParams": [
      {
        "type": "LABEL",
        "name": "customDataLabel",
        "displayName": "Check <a href=\"https://developers.facebook.com/docs/marketing-api/conversions-api/parameters/custom-data\">this documentation</a> for more details on which parameters you can override.\n<br/><br/>"
      },
      {
        "type": "CHECKBOX",
        "name": "autoMapCustomData",
        "checkboxText": "Automap Custom Data",
        "simpleValueType": true,
        "help": "If enabled, the tag will attempt to automatically map parameters from your event data.\n<br/><br/>\nAny value you manually enter in a field below will always override the auto-mapped value.\n<br/><br/>\nDefault mappings:\n<ul>\n<li>Value:\n<ul>\n<li><i>eventData['x-ga-mp1-ev']</i></li>\n<li><i>eventData['x-ga-mp1-tr']</i></li>\n<li><i>eventData.value</i></li>\n<li><i>Sum of Price * Quantity from eventData.items[] or eventData.ecommerce.items[]</i></li>\n<li><i>0</i>, if event is \"Purchase\" and no value is defined</li>\n</ul>\n</li>\n<li>Currency:\n<ul>\n<li><i>eventData.currency</i></li>\n<li><i>Currency from eventData.items[] or eventData.ecommerce.items[]</i></li>\n<li><i>USD</i>, if event is \"Purchase\" and no currency is defined</li>\n</ul>\n</li>\n<li>Contents:\n<ul>\n<li><i>eventData.items[]</i></li>\n<li><i>eventData.ecommerce.items[]</i></li>\n</ul>\n</li>\n<li>Content Type:\n<ul>\n<li><i>eventData[x-fb-cd-content_type]</i></li>\n<li><i>eventData.content_type</i></li>\n<li>Default: <i>product</i></li>\n</ul>\n</li>\n<li>Order ID:\n<ul>\n<li><i>eventData.transaction_id</i></li>\n</ul>\n</li>\n<li>Search String:\n<ul>\n<li><i>eventData.search_term</i></li>\n</ul>\n</li>\n</ul>",
        "defaultValue": true,
        "subParams": [
          {
            "type": "GROUP",
            "name": "autoMapCustomDataSettingsGroup",
            "subParams": [
              {
                "type": "TEXT",
                "name": "itemIdKey",
                "displayName": "Custom Item ID Key",
                "simpleValueType": true,
                "help": "Optional.\n<br/><br/>\nYou can specify a custom key, which will be used to set the content Item ID, by default <i>item_id</i> will be used. This may be useful if you are using WooCommerce extensions.",
                "canBeEmptyString": true
              },
              {
                "type": "SELECT",
                "name": "mapItemDataTo",
                "displayName": "Map item data to",
                "selectItems": [
                  {
                    "value": "contents",
                    "displayValue": "Contents"
                  },
                  {
                    "value": "content_ids",
                    "displayValue": "Content IDs"
                  },
                  {
                    "value": "both",
                    "displayValue": "Both Contents and Content IDs"
                  }
                ],
                "simpleValueType": true,
                "defaultValue": "contents",
                "help": "Choose which parameter(s) to use when mapping item data: Contents, Content IDs or both."
              }
            ],
            "enablingConditions": [
              {
                "paramName": "autoMapCustomData",
                "paramValue": false,
                "type": "NOT_EQUALS"
              }
            ]
          }
        ]
      },
      {
        "type": "SELECT",
        "name": "customDataObject",
        "displayName": "Custom Data Properties Object",
        "macrosInSelect": true,
        "selectItems": [],
        "simpleValueType": true,
        "help": "Provide an object with Custom Data Properties to merge with the fields below. Any conflicting properties will be overwritten.",
        "notSetText": "(not set)"
      },
      {
        "name": "customDataList",
        "simpleTableColumns": [
          {
            "valueValidators": [
              {
                "type": "NON_EMPTY"
              }
            ],
            "defaultValue": "",
            "displayName": "Property Name",
            "name": "name",
            "isUnique": true,
            "type": "TEXT"
          },
          {
            "defaultValue": "",
            "displayName": "Property Value",
            "name": "value",
            "type": "TEXT"
          }
        ],
        "type": "SIMPLE_TABLE",
        "newRowButtonText": "Add property"
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "tagExecutionConsentSettingsGroup",
    "displayName": "Tag Execution Consent Settings",
    "groupStyle": "ZIPPY_CLOSED",
    "subParams": [
      {
        "type": "RADIO",
        "name": "adStorageConsent",
        "radioItems": [
          {
            "value": "optional",
            "displayValue": "Send data always"
          },
          {
            "value": "required",
            "displayValue": "Send data in case marketing consent given",
            "help": "Aborts the tag execution if marketing consent (<i>ad_storage</i> Google Consent Mode or Stape's Data Tag parameter) is not given."
          }
        ],
        "simpleValueType": true,
        "defaultValue": "optional"
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "moreSettingsGroup",
    "displayName": "More Settings",
    "groupStyle": "ZIPPY_OPEN_ON_PARAM",
    "subParams": [
      {
        "type": "CHECKBOX",
        "name": "useAppSecretProof",
        "checkboxText": "Use App Secret Proof",
        "simpleValueType": true,
        "help": "Optional. <br/><br/> Use this field only if your Business Manager\u2019s Conversions API Application requires API calls to include the <i>app secret proof</i>.   <br/><br/> You\u2019ll encounter this requirement if event requests fail with the error:  <i>\"API calls from the server require an appsecret_proof argument\"</i>. <br/><br/> <a href=\"https://developers.facebook.com/docs/graph-api/guides/secure-requests#appsecret_proof\">Learn more</a> about how to generate this value.",
        "subParams": [
          {
            "type": "TEXT",
            "name": "appSecretProof",
            "displayName": "App Secret Proof",
            "simpleValueType": true,
            "enablingConditions": [
              {
                "paramName": "useAppSecretProof",
                "paramValue": true,
                "type": "EQUALS"
              }
            ],
            "valueValidators": [
              {
                "type": "NON_EMPTY"
              }
            ]
          }
        ]
      },
      {
        "type": "CHECKBOX",
        "name": "mapViewItemListToViewContent",
        "checkboxText": "Automap GA4 \"view_item_list\" event to \"ViewContent\"",
        "simpleValueType": true,
        "defaultValue": false,
        "help": "When enabled with \"Inherit from client\" <i>Event Name Setup Method</i>:\n<ul>\n<li>Maps the GA4 \"view_item_list\" event to \"ViewContent\".</li>\n<li>Sets \"content_type\" to \"product_group\" if an items array is present.</li>\n</ul>",
        "enablingConditions": [
          {
            "paramName": "inheritEventName",
            "paramValue": "inherit",
            "type": "EQUALS"
          }
        ]
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "powerclickGroup",
    "displayName": "PowerClick",
    "groupStyle": "ZIPPY_OPEN",
    "subParams": [
      {
        "type": "TEXT",
        "name": "clicksporeTenantId",
        "displayName": "PowerClick Tenant ID",
        "simpleValueType": true,
        "help": "Your PowerClick tenant id. Required \u2014 without it the CAPI response is not logged to PowerClick."
      },
      {
        "type": "TEXT",
        "name": "customEventName",
        "displayName": "PowerClick Event Name (optional)",
        "simpleValueType": true,
        "help": "Overrides the event name shown in PowerClick (e.g. 'Purchase'). Blank = the platform event name."
      },
      {
        "type": "TEXT",
        "name": "sporeId",
        "displayName": "PowerClick Spore ID fallback (optional)",
        "simpleValueType": true,
        "help": "Tried LAST. Map a store-backed variable (e.g. {{sjo.spore_id(coalesce)}}) ONLY on cross-domain checkout/purchase tags, where the __spore_id cookie and storefront event data are gone. Leave blank elsewhere."
      }
    ]
  }
]


___SANDBOXED_JS_FOR_SERVER___

const computeEffectiveTldPlusOne = require('computeEffectiveTldPlusOne');
const createRegex = require('createRegex');
const decodeUriComponent = require('decodeUriComponent');
const encodeUriComponent = require('encodeUriComponent');
const fromBase64 = require('fromBase64');
const generateRandom = require('generateRandom');
const getAllEventData = require('getAllEventData');
const getCookieValues = require('getCookieValues');
const getRequestHeader = require('getRequestHeader');
const getTimestampMillis = require('getTimestampMillis');
const getType = require('getType');
const JSON = require('JSON');
const makeNumber = require('makeNumber');
const makeString = require('makeString');
const Math = require('Math');
const parseUrl = require('parseUrl');
const Promise = require('Promise');
const sendHttpRequest = require('sendHttpRequest');
const queryPermission = require('queryPermission');
// Ingest host. ingest.powerclick.io when this template's "Sends HTTP requests" permission allows it,
// otherwise the legacy ingest host. Both hosts run the same Cloudflare ingest worker, so the
// template works under either permission set and a container moves domains by adding the permission —
// never by a code change. (queryPermission needs no permission of its own.)
const POWERCLICK_INGEST = queryPermission('send_http', 'https://ingest.powerclick.io/api/ingest')
  ? 'https://ingest.powerclick.io/api/ingest'
  : 'https://ingest.clickspore.io/api/ingest';
const setCookie = require('setCookie');
const sha256Sync = require('sha256Sync');
const testRegex = require('testRegex');
const toBase64 = require('toBase64');

/*==============================================================================
==============================================================================*/

const eventData = getAllEventData();
const API_VERSION = '26.0';
const PARTNER_AGENT_STRING = 'stape-gtmss-2.1.7' + (data.enableEventEnhancement ? '-ee' : '');

if (shouldExitEarly(data, eventData)) {
  return data.gtmOnSuccess();
}

const ids = getClickAndBrowserId(data, eventData);
const fbc = ids.fbc;
const fbp = ids.fbp;
setIDsCookies(data, fbc, fbp);

const mappedPostBody = mapEvent(data, eventData, fbc, fbp);
sendRequests(data, mappedPostBody);

if (data.useOptimisticScenario) {
  return data.gtmOnSuccess();
}

/*==============================================================================
  Vendor related functions
==============================================================================*/

function setIDsCookies(data, fbc, fbp) {
  const cookieOptions = {
    domain: isUIFieldTrue(data.overrideCookieDomain)
      ? data.overridenCookieDomain || 'auto'
      : 'auto',
    path: '/',
    samesite: 'Lax',
    secure: true,
    'max-age': 7776000, // 90 days
    HttpOnly: !!data.useHttpOnlyCookie
  };

  if (fbc) {
    setCookie('_fbc', fbc, cookieOptions);
  }

  if (fbp) {
    setCookie('_fbp', fbp, cookieOptions);
  }
}

function getClickAndBrowserId(data, eventData) {
  const ids = {
    fbc:
      getCookieValues('_fbc')[0] ||
      (eventData.common_cookie || {})._fbc ||
      eventData._fbc ||
      eventData.fbc,
    fbp:
      getCookieValues('_fbp')[0] ||
      (eventData.common_cookie || {})._fbp ||
      eventData._fbp ||
      eventData.fbp
  };

  const url = getUrl(eventData);
  const subDomainIndex = url ? computeEffectiveTldPlusOne(url).split('.').length - 1 : 1;

  if (url) {
    const urlParsed = parseUrl(url);
    if (urlParsed && urlParsed.searchParams.fbclid) {
      const fbclid = decodeUriComponent(urlParsed.searchParams.fbclid);
      const fbcParts = ids.fbc ? ids.fbc.split('.') : [];

      if (isValidValue(fbclid) && (!ids.fbc || fbcParts[fbcParts.length - 1] !== fbclid)) {
        ids.fbc = 'fb.' + subDomainIndex + '.' + getTimestampMillis() + '.' + fbclid;
      }
    }
  }

  if (!ids.fbp && data.generateFbp) {
    ids.fbp =
      'fb.' +
      subDomainIndex +
      '.' +
      getTimestampMillis() +
      '.' +
      generateRandom(1000000000, 2147483647);
  }

  return ids;
}

function getEventName(data) {
  const gaToFacebookEventName = {
    page_view: 'PageView',
    'gtm.dom': 'PageView',
    add_payment_info: 'AddPaymentInfo',
    add_to_cart: 'AddToCart',
    add_to_wishlist: 'AddToWishlist',
    sign_up: 'CompleteRegistration',
    begin_checkout: 'InitiateCheckout',
    generate_lead: 'Lead',
    purchase: 'Purchase',
    search: 'Search',
    view_item: 'ViewContent',

    contact: 'Contact',
    customize_product: 'CustomizeProduct',
    donate: 'Donate',
    find_location: 'FindLocation',
    schedule: 'Schedule',
    start_trial: 'StartTrial',
    submit_application: 'SubmitApplication',
    subscribe: 'Subscribe',

    'gtm4wp.addProductToCartEEC': 'AddToCart',
    'gtm4wp.productClickEEC': 'ViewContent',
    'gtm4wp.checkoutOptionEEC': 'InitiateCheckout',
    'gtm4wp.checkoutStepEEC': 'AddPaymentInfo',
    'gtm4wp.orderCompletedEEC': 'Purchase'
  };

  if (data.inheritEventName !== 'override') {
    if (data.mapViewItemListToViewContent) {
      gaToFacebookEventName.view_item_list = 'ViewContent';
    }
    const eventName = eventData.event_name;
    return gaToFacebookEventName[eventName] || eventName;
  }

  let selectedEventName;
  if (data.eventName === 'standard') {
    selectedEventName = data.eventNameStandard;
  } else if (data.eventName === 'custom') {
    selectedEventName = data.eventNameCustom;
  }

  if (isValidValue(selectedEventName)) return selectedEventName;

  // An incomplete override falls back to the incoming name, as the inherit branch does.
  return gaToFacebookEventName[eventData.event_name] || eventData.event_name;
}

function mapEvent(data, eventData, fbc, fbp) {
  let mappedData = {
    event_name: getEventName(data),
    action_source: data.actionSource || 'website',
    event_time: Math.round(getTimestampMillis() / 1000),
    custom_data: {},
    user_data: {}
  };
  const mappedPostBody = {
    data: [mappedData],
    partner_agent: PARTNER_AGENT_STRING
  };

  if (eventData.test_event_code || data.testId) {
    mappedPostBody.test_event_code = eventData.test_event_code
      ? eventData.test_event_code
      : data.testId;
  }

  if (mappedData.action_source === 'app') {
    mappedData.app_data = {};
  }

  if (mappedData.action_source === 'business_messaging') {
    mappedData.messaging_channel = data.messaging_channel;
  }

  mappedData = addServerEventData(data, eventData, mappedData);
  mappedData = addUserData(data, eventData, mappedData, fbc, fbp);
  mappedData = addAppData(data, eventData, mappedData);
  mappedData = addEcommerceData(data, eventData, mappedData);
  mappedData = addOriginalEventData(mappedData);

  if (data.enableEventEnhancement) {
    mappedData.user_data = enhanceEventData(eventData, mappedData.user_data);
  }

  mappedData = overrideDataIfNeeded(mappedData);
  mappedData = cleanupData(mappedData);
  mappedData = hashDataIfNeeded(mappedData);

  if (data.enableEventEnhancement) {
    setGtmEecCookie(mappedData.user_data);
  }

  return mappedPostBody;
}

function hashData(key, value) {
  if (!value) {
    return value;
  }

  const type = getType(value);

  if (type === 'undefined' || value === 'undefined') {
    return undefined;
  }

  if (type === 'array') {
    return value.map((val) => {
      return hashData(key, val);
    });
  }

  if (isHashed(value)) {
    return value;
  }

  value = makeString(value).trim().toLowerCase();

  if (key === 'ph') {
    value = normalizePhoneNumber(value);
  } else if (key === 'ct') {
    value = value.split(' ').join('');
  }

  return sha256Sync(value, { outputEncoding: 'hex' });
}

function hashDataIfNeeded(mappedData) {
  if (mappedData.user_data) {
    const keysToHash = [
      'em',
      'ph',
      'ge',
      'db',
      'ln',
      'fn',
      'ct',
      'st',
      'zp',
      'country',
      'external_id'
    ];
    for (let key in mappedData.user_data) {
      if (keysToHash.indexOf(key) !== -1) {
        mappedData.user_data[key] = hashData(key, mappedData.user_data[key]);
      }
    }
  }

  return mappedData;
}

function overrideDataIfNeeded(mappedData) {
  if (getType(data.userDataObject) === 'object') {
    mergeObj(mappedData.user_data, data.userDataObject);
  }
  if (data.userDataList) {
    data.userDataList.forEach((d) => {
      mappedData.user_data[d.name] = d.value;
    });
  }

  if (getType(data.customDataObject) === 'object') {
    mergeObj(mappedData.custom_data, data.customDataObject);
  }
  if (data.customDataList) {
    data.customDataList.forEach((d) => {
      mappedData.custom_data[d.name] = d.value;
    });
  }

  if (mappedData.action_source === 'app') {
    if (getType(data.appDataObject) === 'object') {
      mergeObj(mappedData.app_data, data.appDataObject);
    }
    if (data.appDataList) {
      data.appDataList.forEach((d) => {
        mappedData.app_data[d.name] = d.value;
      });
    }
  }

  return mappedData;
}

function cleanupData(mappedData) {
  if (mappedData.action_source === 'business_messaging') {
    mappedData.event_source_url = undefined;
    ['client_ip_address', 'client_user_agent', 'fbc', 'fbp'].forEach(
      (key) => (mappedData.user_data[key] = undefined)
    );
  }

  if (mappedData.user_data) {
    const userData = {};

    for (let userDataKey in mappedData.user_data) {
      if (isValidValue(mappedData.user_data[userDataKey])) {
        userData[userDataKey] = mappedData.user_data[userDataKey];
      }
    }

    mappedData.user_data = userData;
  }

  if (mappedData.custom_data) {
    const customData = {};

    for (let customDataKey in mappedData.custom_data) {
      if (isValidValue(mappedData.custom_data[customDataKey])) {
        customData[customDataKey] = mappedData.custom_data[customDataKey];
      }
    }

    if (customData.value === 0 || customData.value === '0') customData.value = '0.00';

    mappedData.custom_data = customData;
  }

  if (mappedData.app_data) {
    const appData = {};

    for (let appDataKey in mappedData.app_data) {
      if (isValidValue(mappedData.app_data[appDataKey])) {
        appData[appDataKey] = mappedData.app_data[appDataKey];
      }
    }

    mappedData.app_data = appData;
  }

  if (mappedData.original_event_data) {
    const originalEventData = {};

    for (let originalEventDataKey in mappedData.original_event_data) {
      if (isValidValue(mappedData.original_event_data[originalEventDataKey])) {
        originalEventData[originalEventDataKey] =
          mappedData.original_event_data[originalEventDataKey];
      }
    }

    mappedData.original_event_data = originalEventData;
  }

  for (let key in mappedData) { // Assigned, not rebuilt: the post body holds this reference.
    if (!isValidValue(mappedData[key])) mappedData[key] = undefined;
  }

  return mappedData;
}

function addEcommerceData(data, eventData, mappedData) {
  const autoMapEnabled = data.hasOwnProperty('autoMapCustomData') ? data.autoMapCustomData : true; // To avoid a breaking change.
  if (autoMapEnabled) {
    let currencyFromItems = '';
    let valueFromItems = 0;

    let items;
    if (getType(eventData.items) === 'array' && eventData.items.length) items = eventData.items;
    else if (
      getType(eventData.ecommerce) === 'object' &&
      getType(eventData.ecommerce.items) === 'array' &&
      eventData.ecommerce.items.length
    ) {
      items = eventData.ecommerce.items;
    }

    if (items) {
      mappedData.custom_data.content_type =
        eventData['x-fb-cd-content_type'] || eventData.content_type || 'product';

      if (
        data.mapViewItemListToViewContent &&
        data.inheritEventName !== 'override' &&
        eventData.event_name === 'view_item_list'
      ) {
        mappedData.custom_data.content_type = 'product_group';
      }

      if (!items[1]) {
        if (items[0].item_name) mappedData.custom_data.content_name = items[0].item_name;
        if (items[0].item_category)
          mappedData.custom_data.content_category = items[0].item_category;

        const singleItemPrice = toFiniteNumber(items[0].price);
        const singleItemQuantity = toFiniteNumber(items[0].quantity);
        if (isValidValue(singleItemPrice)) {
          mappedData.custom_data.value = isValidValue(singleItemQuantity)
            ? singleItemQuantity * singleItemPrice
            : singleItemPrice;
        }
      }

      const itemIdKey = data.itemIdKey ? data.itemIdKey : 'item_id';
      const mapItemDataTo = data.mapItemDataTo || 'contents';
      items.forEach((d) => {
        if (!currencyFromItems && d.currency) currencyFromItems = d.currency;

        const content = {};
        let hasContent = false;

        if (isValidValue(d[itemIdKey])) {
          content.id = makeString(d[itemIdKey]);
          hasContent = true;
        }
        if (d.item_name) {
          content.title = d.item_name;
          hasContent = true;
        }
        if (d.item_brand) {
          content.brand = d.item_brand;
          hasContent = true;
        }
        if (d.item_category) {
          content.category = d.item_category;
          hasContent = true;
        }

        const quantity = toFiniteNumber(d.quantity);
        if (isValidValue(quantity)) {
          content.quantity = quantity;
          hasContent = true;
        }

        const itemPrice = toFiniteNumber(d.price);
        if (isValidValue(itemPrice)) {
          content.item_price = itemPrice;
          hasContent = true;
          valueFromItems += isValidValue(quantity) ? quantity * itemPrice : itemPrice;
        }

        if (!hasContent) return;

        if (mapItemDataTo === 'contents' || mapItemDataTo === 'both') {
          mappedData.custom_data.contents = mappedData.custom_data.contents || [];
          mappedData.custom_data.contents.push(content);
        }
        if (content.id && (mapItemDataTo === 'content_ids' || mapItemDataTo === 'both')) {
          mappedData.custom_data.content_ids = mappedData.custom_data.content_ids || [];
          mappedData.custom_data.content_ids.push(content.id);
        }
      });

      if (!mappedData.custom_data.contents && !mappedData.custom_data.content_ids) {
        mappedData.custom_data.content_type = undefined;
      }
    }

    const value = toFiniteNumber(
      eventData['x-ga-mp1-ev'] || eventData['x-ga-mp1-tr'] || eventData.value
    );
    if (isValidValue(value)) mappedData.custom_data.value = value;

    const currency = eventData.currency || currencyFromItems;
    if (currency) mappedData.custom_data.currency = currency;

    if (eventData.search_term) mappedData.custom_data.search_string = eventData.search_term;

    if (eventData.transaction_id) mappedData.custom_data.order_id = eventData.transaction_id;

    if (mappedData.event_name === 'Purchase') {
      // Facebook rejects a Purchase event with no value at all, so this always assigns one.
      if (!isValidValue(mappedData.custom_data.value))
        mappedData.custom_data.value = valueFromItems;
    }

    if (
      !mappedData.custom_data.currency &&
      (isValidValue(mappedData.custom_data.value) || valueFromItems)
    ) {
      mappedData.custom_data.currency = 'USD';
    }
  }

  return mappedData;
}

function addUserData(data, eventData, mappedData, fbc, fbp) {
  const autoMapEnabled = data.hasOwnProperty('autoMapUserData') ? data.autoMapUserData : true; // To avoid a breaking change.
  if (autoMapEnabled) {
    let address = {};
    let user_data = {};
    if (getType(eventData.user_data) === 'object') {
      user_data = eventData.user_data;
      const addressType = getType(user_data.address);
      if (addressType === 'object' || addressType === 'array') {
        address = user_data.address[0] || user_data.address;
      }
    }

    if (fbc) mappedData.user_data.fbc = fbc;
    if (fbp) mappedData.user_data.fbp = fbp;

    if (eventData.user_agent) mappedData.user_data.client_user_agent = eventData.user_agent;

    if (eventData.ip_override) {
      mappedData.user_data.client_ip_address = eventData.ip_override
        .split(' ')
        .join('')
        .split(',')[0];
    }

    if (eventData.fb_login_id) mappedData.user_data.fb_login_id = eventData.fb_login_id;

    if (eventData.anon_id) mappedData.user_data.anon_id = eventData.anon_id;

    if (eventData.madid) mappedData.user_data.madid = eventData.madid;

    const externalId = eventData.external_id || eventData.user_id || eventData.userId;
    if (externalId) mappedData.user_data.external_id = externalId;

    const subscriptionId = eventData.subscription_id || eventData.subscriptionId;
    if (subscriptionId) mappedData.user_data.subscription_id = subscriptionId;

    const leadId = eventData.lead_id || eventData.leadId;
    if (leadId) mappedData.user_data.lead_id = leadId;

    const ln =
      eventData.lastName ||
      eventData.LastName ||
      eventData.nameLast ||
      eventData.last_name ||
      user_data.last_name ||
      address.last_name ||
      address.sha256_last_name;
    if (ln) mappedData.user_data.ln = ln;

    const fn =
      eventData.firstName ||
      eventData.FirstName ||
      eventData.nameFirst ||
      eventData.first_name ||
      user_data.first_name ||
      address.first_name ||
      address.sha256_first_name;
    if (fn) mappedData.user_data.fn = fn;

    const em =
      eventData.email ||
      user_data.email_address ||
      user_data.email ||
      user_data.sha256_email_address;
    if (em) mappedData.user_data.em = em;

    const ph = eventData.phone || user_data.phone_number || user_data.phone;
    if (ph) mappedData.user_data.ph = ph;

    const ct = eventData.city || address.city;
    if (ct) mappedData.user_data.ct = ct;

    const st = eventData.state || eventData.region || user_data.region || address.region;
    if (st) mappedData.user_data.st = st;

    const zp =
      eventData.zip || eventData.postal_code || user_data.postal_code || address.postal_code;
    if (zp) mappedData.user_data.zp = zp;

    const country =
      eventData.countryCode || eventData.country || user_data.country || address.country;
    if (country) mappedData.user_data.country = country;

    if (eventData.gender) mappedData.user_data.ge = eventData.gender;
    if (eventData.db) mappedData.user_data.db = eventData.db;
  }
  return mappedData;
}

function addServerEventData(data, eventData, mappedData) {
  const autoMapEnabled = data.hasOwnProperty('autoMapServerEventData')
    ? data.autoMapServerEventData
    : true; // To avoid a breaking change.
  if (autoMapEnabled) {
    if (eventData.page_location) mappedData.event_source_url = eventData.page_location;
    if (eventData.page_referrer) mappedData.referrer_url = eventData.page_referrer;

    const eventId = eventData.event_id || eventData.transaction_id;
    if (eventId) mappedData.event_id = eventId;
  }

  if (data.serverEventDataList) {
    const required = ['event_time'];

    data.serverEventDataList.forEach((d) => {
      // A required field can be replaced but not cleared, so an empty one is ignored.
      if (required.indexOf(d.name) !== -1 && !isValidValue(d.value)) return;
      mappedData[d.name] = d.value;
    });

    if (
      !mappedData.data_processing_options &&
      (mappedData.data_processing_options_country || mappedData.data_processing_options_state)
    ) {
      mappedData.data_processing_options_country = undefined;
      mappedData.data_processing_options_state = undefined;
    }
  }

  return mappedData;
}

function addAppData(data, eventData, mappedData) {
  if (mappedData.action_source !== 'app') {
    return mappedData;
  }

  const autoMapEnabled = data.hasOwnProperty('autoMapAppData') ? data.autoMapAppData : true; // To avoid a breaking change.
  if (autoMapEnabled) {
    if (getType(eventData.app_data) === 'object') {
      mappedData.app_data = eventData.app_data;
      return mappedData;
    }

    mappedData.app_data.advertiser_tracking_enabled = eventData.advertiser_tracking_enabled ? 1 : 0; // Required
    mappedData.app_data.application_tracking_enabled = eventData.application_tracking_enabled
      ? 1
      : 0; // Required
    if (eventData.extinfo) {
      mappedData.app_data.extinfo = eventData.extinfo;
    } else {
      const platform = makeString(eventData['x-ga-platform'] || '').toLowerCase();
      const extinfoArray = [
        platform === 'android' ? 'a2' : platform === 'ios' ? 'i2' : '', // Required
        eventData.app_id || '',
        eventData.app_version || '',
        eventData.app_version ? 'Version ' + eventData.app_version : '',
        makeString(eventData['x-ga-os_version'] || ''), // Required
        eventData['x-ga-device_model'] || '',
        eventData.language || '',
        '',
        '',
        '',
        '',
        '',
        '',
        '',
        '',
        ''
      ];
      mappedData.app_data.extinfo = extinfoArray;
    }
    if (eventData.campaign_ids) mappedData.app_data.campaign_ids = eventData.campaign_ids;
    if (eventData.install_referrer)
      mappedData.app_data.install_referrer = eventData.install_referrer;
    if (eventData.installer_package)
      mappedData.app_data.installer_package = eventData.installer_package;
    if (eventData.url_schemes) mappedData.app_data.url_schemes = eventData.url_schemes;
    if (eventData.vendor_id) mappedData.app_data.vendor_id = eventData.vendor_id;
    if (eventData.windows_attribution_id)
      mappedData.app_data.windows_attribution_id = eventData.windows_attribution_id;
  }

  return mappedData;
}

function addOriginalEventData(mappedData) {
  if (mappedData.event_name !== 'AppendValue') {
    return mappedData;
  }

  if (data.originalEventDataList) {
    mappedData.action_source = undefined;

    mappedData.original_event_data = {};
    data.originalEventDataList.forEach((d) => {
      mappedData.original_event_data[d.name] = d.value;
    });
  }

  return mappedData;
}

function setGtmEecCookie(userData) {
  const gtmeecCookie = {};

  if (userData.em) gtmeecCookie.em = userData.em;
  if (userData.ph) gtmeecCookie.ph = userData.ph;
  if (userData.ln) gtmeecCookie.ln = userData.ln;
  if (userData.fn) gtmeecCookie.fn = userData.fn;
  if (userData.ct) gtmeecCookie.ct = userData.ct;
  if (userData.st) gtmeecCookie.st = userData.st;
  if (userData.zp) gtmeecCookie.zp = userData.zp;
  if (userData.ge) gtmeecCookie.ge = userData.ge;
  if (userData.db) gtmeecCookie.db = userData.db;
  if (userData.country) gtmeecCookie.country = userData.country;
  if (userData.external_id) gtmeecCookie.external_id = userData.external_id;
  if (userData.fb_login_id) gtmeecCookie.fb_login_id = userData.fb_login_id;

  setCookie('_gtmeec', toBase64(JSON.stringify(gtmeecCookie)), {
    domain: isUIFieldTrue(data.overrideCookieDomain)
      ? data.overridenCookieDomain || 'auto'
      : 'auto',
    path: '/',
    samesite: 'strict',
    secure: true,
    'max-age': 7776000, // 90 days
    HttpOnly: true
  });
}

function enhanceEventData(eventData, userData) {
  const commonCookie = eventData.common_cookie || {};

  const cookieValues = getCookieValues('_gtmeec');
  if ((!cookieValues || cookieValues.length === 0) && !commonCookie._gtmeec) {
    return userData;
  }

  const encodedValue = cookieValues[0] || commonCookie._gtmeec;
  if (!encodedValue) {
    return userData;
  }

  const jsonStr = fromBase64(encodedValue);
  if (!jsonStr) {
    return userData;
  }

  const gtmeecData = JSON.parse(jsonStr);

  if (getType(gtmeecData) !== 'object') {
    return userData;
  }

  const keys = 'em,ph,ln,fn,ct,st,zp,ge,db,country,external_id,fb_login_id'.split(',');
  keys.forEach((key) => {
    const value = gtmeecData[key];
    const valueType = getType(value);
    if (userData[key] || (valueType !== 'string' && valueType !== 'number')) return;
    if (isValidValue(value)) userData[key] = value;
  });

  return userData;
}

function sendRequests(data, mappedPostBody) {
  let pixelsConfig = [
    {
      pixelId: data.pixelId,
      accessToken: data.accessToken,
      appSecretProof: data.useAppSecretProof ? data.appSecretProof : undefined
    }
  ];
  if (data.enableMultipixelSetup) {
    pixelsConfig = pixelsConfig.concat(data.pixelIdAndAccessTokenTable);
  }

  const requests = pixelsConfig.map((pixelConfig) => {
    const pixelId = pixelConfig.pixelId;
    const accessToken = pixelConfig.accessToken;
    const appSecretProof = pixelConfig.appSecretProof;
    const postUrl =
      'https://graph.facebook.com/v' +
      API_VERSION +
      '/' +
      enc(pixelId) +
      '/events?access_token=' +
      enc(accessToken) +
      (appSecretProof ? '&appsecret_proof=' + enc(appSecretProof) : '');

    return sendHttpRequest(
      postUrl,
      { headers: { 'content-type': 'application/json' }, method: 'POST' },
      JSON.stringify(mappedPostBody)
    )
      // PowerClick CAPI response logging, AWAITED, on both outcomes — see logToPowerClick().
      .then(
        (result) => logToPowerClick(result, undefined).then(() => result, () => result),
        // statusCode 0 = Meta never answered; Stape's check below reads it as a failure.
        (metaError) => logToPowerClick(undefined, metaError).then(() => ({ statusCode: 0 }), () => ({ statusCode: 0 }))
      )
      .then((result) => {
        if (result.statusCode < 200 || result.statusCode >= 300) return false;
        return true;
      })
      .catch((result) => {
        return false;
      });
  });

  Promise.all(requests)
    .then((results) => {
      if (!data.useOptimisticScenario) {
        const someRequestFailed = results.some((success) => !success);
        if (someRequestFailed) return data.gtmOnFailure();
        return data.gtmOnSuccess();
      }
    })
    .catch((result) => {
      if (!data.useOptimisticScenario) return data.gtmOnFailure();
    });
}

/*==============================================================================
  Helpers
==============================================================================*/

function getUrl(eventData) {
  return eventData.page_location || getRequestHeader('referer') || eventData.page_referrer;
}

function shouldExitEarly(data, eventData) {
  if (!isConsentGivenOrNotRequired(data, eventData)) return true;

  const url = getUrl(eventData);
  if (url && url.lastIndexOf('https://gtm-msr.appspot.com/', 0) === 0) return true;

  return false;
}

function enc(data) {
  if (['null', 'undefined'].indexOf(getType(data)) !== -1) data = '';
  return encodeUriComponent(makeString(data));
}

function isHashed(value) {
  if (!value) return false;
  return makeString(value).match('^[A-Fa-f0-9]{64}$') !== null;
}

function isValidValue(value) {
  const valueType = getType(value);
  if (valueType === 'null' || valueType === 'undefined' || value !== value) return false;
  return value !== '' && value !== 'undefined' && value !== 'null';
}

function toFiniteNumber(value) {
  if (!isValidValue(value)) return undefined;

  const valueType = getType(value);
  if (valueType !== 'number' && valueType !== 'string') return undefined;
  if (valueType === 'string' && value.trim() === '') return undefined; // Whitespace coerces to 0.

  const parsed = makeNumber(value);
  if (parsed * 0 !== 0) return undefined; // Rejects NaN and +/-Infinity.

  return parsed;
}

function normalizePhoneNumber(phoneNumber) {
  if (!phoneNumber) return phoneNumber;
  const itemRegex = createRegex('^[0-9]$');
  return phoneNumber
    .split('')
    .filter((item) => testRegex(itemRegex, item))
    .join('');
}

function isUIFieldTrue(field) {
  return [true, 'true'].indexOf(field) !== -1;
}

function mergeObj(target, source) {
  for (const key in source) {
    if (source.hasOwnProperty(key)) target[key] = source[key];
  }
  return target;
}

function isConsentGivenOrNotRequired(data, eventData) {
  if (data.adStorageConsent !== 'required') return true;
  if (eventData.consent_state) return !!eventData.consent_state.ad_storage;
  const xGaGcs = eventData['x-ga-gcs'] || ''; // x-ga-gcs is a string like "G110"
  return xGaGcs[2] === '1';
}

/*==============================================================================
  PowerClick CAPI response logging — kept in its own functions so a Stape update merges around it.
==============================================================================*/

// Build the PowerClick capi_response body. Pass Meta's `result` when we got a response; pass
// `metaError` instead when the Meta request never completed, so the failure is LOGGED rather than
// vanishing (see the .then() rejection handler below).
function buildPowerClickBody(result, metaError) {
  const mappedEventData = mappedPostBody.data[0];
  return JSON.stringify({
    type: 'capi_response',
    ts_ms: getTimestampMillis(),
    event_source: 'sgtm',
    platform: 'meta',
    source_event: eventData.event_name || data.customEventName || mappedEventData.event_name || 'unknown',
    event_name: data.customEventName || mappedEventData.event_name || eventData.event_name || 'unknown',
    event_id: mappedEventData.event_id,
    // The event's own sources win; data.sporeId is a FALLBACK (last) — it only fills the blank on
    // cross-domain Paywall/checkout/purchase events firing in the Shopify web-pixel sandbox (where
    // the __spore_id cookie + storefront dataLayer are gone, and fbc mostly isn't readable). Storefront
    // hits use eventData.spore_id and need NO field, so map data.sporeId ONLY on the cross-domain tags.
    spore_id: eventData.spore_id || (eventData.sjo && eventData.sjo.spore_id) || eventData['x-sp-spore_id'] || getCookieValues('__spore_id')[0] || data.sporeId || '',
    // Standardized click_id = the fbc. Mirror the user_data.fbc (which is populated from the
    // event's mapped user data) when the cookie/URL-derived `fbc` is empty — e.g. Shopify
    // post-purchase web-pixel events where the _fbc cookie isn't readable in the sandbox.
    click_id: fbc || (mappedEventData.user_data && mappedEventData.user_data.fbc) || '',
    // status_code 0 + `error` marks "the Meta request itself never completed" — distinguishable from
    // a real Meta rejection (which carries its own 4xx/5xx). The backend's _capi_response_ok treats a
    // non-2xx as not-delivered, so these land as an explicit failure instead of an absent row.
    fb_response: result
      ? { status_code: result.statusCode, body: result.body }
      : { status_code: 0, body: '', error: 'meta_request_did_not_complete', error_detail: metaError },
    // Include full user_data sent to Meta (already hashed)
    user_data: mappedEventData.user_data,
    // Include full custom_data (value, currency, contents, etc.)
    custom_data: mappedEventData.custom_data,
    // Action source (web, app, etc.)
    action_source: mappedEventData.action_source,
    context: {
      page_location: eventData.page_location,
      user_agent: eventData.user_agent,
      fbp: fbp,
      fbc: fbc,
      // The VISITOR's IP, not the datacenter's. sGTM exposes it as eventData.ip_override and we
      // already use it for the Meta leg (see mapEvent -> user_data.client_ip_address), but we were
      // not sending it on our own leg. The PowerClick request originates from sGTM, so the ingest
      // worker's CF-Connecting-IP fallback sees STAPE'S datacenter address instead.
      //
      // Measured 2026-08-05 across Meta Purchase capi_responses: the IP we stored disagreed with
      // the IP Meta received on 753/756 hmm rows, 189/189 surfbasis, 63/63 joyspring, 21/21 novos —
      // ours consistently a Google Cloud range (34.x / 104.198.x, i.e. sGTM), Meta's the real
      // client, frequently IPv6. That is ~100%, so this is the norm and not a misconfiguration.
      //
      // Matters beyond storage: we forward IP downstream to CAPI/Mixpanel (tasks/integrations.py),
      // so every integration we feed was getting a datacenter address as a match key.
      ip: eventData.ip_override || ''
    },
    // Client-side navigation diagnostics, set as event parameters in the WEB container
    // (pc_nav_type / pc_since_load / pc_visibility from Custom JavaScript variables).
    //
    // Purpose: tell a DUPLICATE send apart from a first one. A genuine first purchase reads
    // navigate / ~500ms / visible. A duplicate's reading names the mechanism outright —
    // back_forward at ~40ms is a bfcache restore, reload is a refresh, navigate is a fresh
    // re-entry to the same URL, and a large since_load means it fired from a focus/visibility
    // handler long after the page loaded rather than on load at all.
    //
    // Deliberately on the PowerClick leg only, NOT in custom_data: Meta would surface unknown
    // custom_data keys as unrecognised parameters, and diagnostics have no business travelling
    // with the conversion itself. Values are passed raw — JSON.stringify drops undefined keys, so
    // the block is simply absent until the web container supplies them.
    diagnostics: {
      nav_type:   eventData.pc_nav_type,
      since_load: eventData.pc_since_load,
      visibility: eventData.pc_visibility
    }
  });
}

// One PowerClick capi_response per Meta pixel request.
//
// WHY THIS IS AWAITED (do not "simplify" it back to fire-and-forget):
// The PowerClick log is dispatched only AFTER Meta responds, so its dispatch time tracks Meta's
// latency — early for small events (LPV), late for Purchase (full hashed user_data + custom_data).
// Left un-awaited, a late dispatch races the sGTM runtime finishing the request, and loses. Measured
// on hmm 2026-07-30: LPV delivered 5899/5903 (99.9%) while Purchase delivered 32/74 (43%) — same
// template, same transport, same code path. sendRequests() chains this BEFORE its own status check, so
// gtmOnSuccess/gtmOnFailure wait for it; and both of its outcomes pass Meta's result through, so a
// failed log can never leave the tag unsignalled.
//
// A Meta request that never completed (timeout / network) is logged too, as status_code 0 with an
// `error`, so a red badge carries its own reason instead of no payload at all.
//
// NOTE: with useOptimisticScenario the tag reports success before Meta responds, which puts this log
// back in a race the await cannot win. Leave it off on any tag whose CAPI log matters.
function logToPowerClick(result, metaError) {
  return sendHttpRequest(
    POWERCLICK_INGEST + '?tenant_id=' + (data.clicksporeTenantId || 'default'),
    { headers: { 'content-type': 'application/json' }, method: 'POST' },
    buildPowerClickBody(result, metaError)
  );
}

/**
 * =============================================================================
 * POWERCLICK INTEGRATION - ADDITIONAL TEMPLATE FIELDS
 * 
 * =============================================================================
 *
 * This modified template includes PowerClick CAPI response logging.
 * Fields (added by the PowerClick .tpl build — nothing to configure by hand):
 *
 * FIELD 1: clicksporeTenantId (text)
 *   - Type: Text input
 *   - Display name: "PowerClick Tenant ID"
 *   - Default value: "joyspring"
 *   - Help text: "Your PowerClick tenant identifier"
 *
 * FIELD 2: customEventName (text)
 *   - Type: Text input
 *   - Display name: "PowerClick Event Name"
 *   - Help text: "Override event name in PowerClick CAPI dashboard (e.g., 'Purchase', 'Lead').
 *                 If blank, uses the Meta event name from event mapping."
 *
 * FIELD 3: sporeId (text) — cross-domain FALLBACK, map ONLY on checkout/purchase tags
 *   - Type: Text input
 *   - Display name: "PowerClick Spore ID (store lookup)"
 *   - Map to a durable store-backed variable, e.g. {{sjo.spore_id(coalesce)}}
 *   - Help text: "Fallback (tried LAST): fills spore_id only on bottom-of-funnel events (Paywall/
 *                 checkout/purchase) that fire in the Shopify web-pixel sandbox, where the __spore_id
 *                 cookie + storefront dataLayer are gone. Storefront tags carry spore_id in event data
 *                 already — leave the field empty there (no change). Map it ONLY on the cross-domain tags."
 *
 * DATA SENT TO POWERCLICK:
 *   - type: 'capi_response'
 *   - platform: 'meta'
 *   - event_name: (from Facebook event)
 *   - event_id: (deduplication ID)
 *   - spore_id: (from the sporeId store-lookup field, then eventData.spore_id / sjo / cookie)
 *   - fb_response.status_code: HTTP status from Facebook
 *   - fb_response.body: Response body from Facebook
 *   - context: page_location, user_agent, fbp, fbc
 *
 * ENDPOINT: https://ingest.powerclick.io/api/ingest?tenant_id={tenantId}
 *
 * VIEW CAPI DATA: https://dashboard.powerclick.io
 * =============================================================================
 */


___SERVER_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "read_event_data",
        "versionId": "1"
      },
      "param": [
        {
          "key": "eventDataAccess",
          "value": {
            "type": 1,
            "string": "any"
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "set_cookies",
        "versionId": "1"
      },
      "param": [
        {
          "key": "allowedCookies",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "name"
                  },
                  {
                    "type": 1,
                    "string": "domain"
                  },
                  {
                    "type": 1,
                    "string": "path"
                  },
                  {
                    "type": 1,
                    "string": "secure"
                  },
                  {
                    "type": 1,
                    "string": "session"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "_fbc"
                  },
                  {
                    "type": 1,
                    "string": "*"
                  },
                  {
                    "type": 1,
                    "string": "*"
                  },
                  {
                    "type": 1,
                    "string": "any"
                  },
                  {
                    "type": 1,
                    "string": "any"
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "name"
                  },
                  {
                    "type": 1,
                    "string": "domain"
                  },
                  {
                    "type": 1,
                    "string": "path"
                  },
                  {
                    "type": 1,
                    "string": "secure"
                  },
                  {
                    "type": 1,
                    "string": "session"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "_fbp"
                  },
                  {
                    "type": 1,
                    "string": "*"
                  },
                  {
                    "type": 1,
                    "string": "*"
                  },
                  {
                    "type": 1,
                    "string": "any"
                  },
                  {
                    "type": 1,
                    "string": "any"
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "name"
                  },
                  {
                    "type": 1,
                    "string": "domain"
                  },
                  {
                    "type": 1,
                    "string": "path"
                  },
                  {
                    "type": 1,
                    "string": "secure"
                  },
                  {
                    "type": 1,
                    "string": "session"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "_gtmeec"
                  },
                  {
                    "type": 1,
                    "string": "*"
                  },
                  {
                    "type": 1,
                    "string": "*"
                  },
                  {
                    "type": 1,
                    "string": "any"
                  },
                  {
                    "type": 1,
                    "string": "any"
                  }
                ]
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "send_http",
        "versionId": "1"
      },
      "param": [
        {
          "key": "allowedUrls",
          "value": {
            "type": 1,
            "string": "specific"
          }
        },
        {
          "key": "urls",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "https://graph.facebook.com/"
              },
              {
                "type": 1,
                "string": "https://ingest.powerclick.io/*"
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "get_cookies",
        "versionId": "1"
      },
      "param": [
        {
          "key": "cookieAccess",
          "value": {
            "type": 1,
            "string": "specific"
          }
        },
        {
          "key": "cookieNames",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "_fbc"
              },
              {
                "type": 1,
                "string": "_fbp"
              },
              {
                "type": 1,
                "string": "_gtmeec"
              },
              {
                "type": 1,
                "string": "__spore_id"
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "read_request",
        "versionId": "1"
      },
      "param": [
        {
          "key": "headerWhitelist",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "headerName"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "referer"
                  }
                ]
              }
            ]
          }
        },
        {
          "key": "headersAllowed",
          "value": {
            "type": 8,
            "boolean": true
          }
        },
        {
          "key": "requestAccess",
          "value": {
            "type": 1,
            "string": "specific"
          }
        },
        {
          "key": "headerAccess",
          "value": {
            "type": 1,
            "string": "specific"
          }
        },
        {
          "key": "queryParameterAccess",
          "value": {
            "type": 1,
            "string": "any"
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  }
]


___TESTS___

scenarios: []


___NOTES___

PowerClick build of stape-io/facebook-tag@0c0e8cb (2026-09-02) + PowerClick CAPI logging. Source: gtm-scripts/capi/meta/ — do not edit in GTM; edit code.js and rebuild.


