package com.google.analytics.campaign
{
   import com.google.analytics.utils.URL;
   import com.google.analytics.utils.Protocols;
   import com.google.analytics.v4.Configuration;
   import com.google.analytics.debug.VisualDebugMode;
   import com.google.analytics.utils.Variables;
   import com.google.analytics.core.OrganicReferrer;
   import com.google.analytics.debug.DebugConfiguration;
   import com.google.analytics.core.Buffer;


   public class CampaignManager extends Object
   {
      public function CampaignManager(param1:Configuration, param2:DebugConfiguration, param3:Buffer, param4:Number, param5:String, param6:Number) {
         super();
         _config=param1;
         _debug=param2;
         _buffer=param3;
         _domainHash=param4;
         _referrer=param5;
         _timeStamp=param6;
         return;
      }

      public static const trackingDelimiter:String = "|";

      public static function isInvalidReferrer(param1:String) : Boolean {
         var [OFS6]_loc2_:URL = [/OFS][OFS2]null[/OFS];
         if([OFS7]param1[/OFS][OFS10]==[/OFS][OFS8]""[/OFS]||[OFS17]param1[/OFS][OFS21]==[/OFS][OFS18]"-"[/OFS]||[OFS28]param1[/OFS][OFS32]==[/OFS][OFS29]"0"[/OFS])
         {
            [OFS38]return [/OFS]true;
         }
         if([OFS39]param1[/OFS].[OFS43]indexOf[/OFS][OFS43]([/OFS][OFS40]"://"[/OFS][OFS43])[/OFS][OFS49]>[/OFS][OFS47]-1[/OFS])
         {
            [OFS64]_loc2_=[/OFS][OFS57]new [/OFS][OFS57]URL[/OFS][OFS57]([/OFS][OFS56]param1[/OFS][OFS57])[/OFS];
            if([OFS65]_loc2_[/OFS].[OFS66]protocol[/OFS][OFS75]==[/OFS][OFS69]Protocols[/OFS].[OFS72]file[/OFS]||[OFS82]_loc2_[/OFS].[OFS83]protocol[/OFS][OFS92]==[/OFS][OFS86]Protocols[/OFS].[OFS89]none[/OFS])
            {
               [OFS98]return [/OFS]true;
            }
         }
         [OFS100]return [/OFS]false;
      }

      public static function isFromGoogleCSE(param1:String, param2:Configuration) : Boolean {
         var _loc3_:URL = new URL(param1);
         if(_loc3_.hostName.indexOf(param2.google)>-1)
         {
            if(_loc3_.search.indexOf(param2.googleSearchParam+"=")>-1)
            {
               if(_loc3_.path=="/"+param2.googleCsePath)
               {
                  return true;
               }
            }
         }
         return false;
      }

      private var _config:Configuration;

      public function getCampaignInformation(param1:String, param2:Boolean) : CampaignInfo {
         var _loc4_:CampaignTracker = null;
         var _loc8_:CampaignTracker = null;
         var _loc9_:* = 0;
         var _loc3_:CampaignInfo = new CampaignInfo();
         var _loc5_:* = false;
         var _loc6_:* = false;
         var _loc7_:* = 0;
         if((_config.allowLinker)&&(_buffer.isGenuine()))
         {
            if(!_buffer.hasUTMZ())
            {
               return _loc3_;
            }
         }
         _loc4_=getTrackerFromSearchString(param1);
         if(isValid(_loc4_))
         {
            _loc6_=hasNoOverride(param1);
            if((_loc6_)&&!_buffer.hasUTMZ())
            {
               return _loc3_;
            }
         }
         if(!isValid(_loc4_))
         {
            _loc4_=getOrganicCampaign();
            if(!_buffer.hasUTMZ()&&(isIgnoredKeyword(_loc4_)))
            {
               return _loc3_;
            }
         }
         if(!isValid(_loc4_)&&(param2))
         {
            _loc4_=getReferrerCampaign();
            if(!_buffer.hasUTMZ()&&(isIgnoredReferral(_loc4_)))
            {
               return _loc3_;
            }
         }
         if(!isValid(_loc4_))
         {
            if(!_buffer.hasUTMZ()&&(param2))
            {
               _loc4_=getDirectCampaign();
            }
         }
         if(!isValid(_loc4_))
         {
            return _loc3_;
         }
         if((_buffer.hasUTMZ())&&!_buffer.utmz.isEmpty())
         {
            _loc8_=new CampaignTracker();
            _loc8_.fromTrackerString(_buffer.utmz.campaignTracking);
            _loc5_=_loc8_.toTrackerString()==_loc4_.toTrackerString();
            _loc7_=_buffer.utmz.responseCount;
         }
         _loc9_=_buffer.utma.sessionCount;
         _loc7_++;
         if(_loc9_==0)
         {
            _loc9_=1;
         }
         _buffer.utmz.domainHash=_domainHash;
         _buffer.utmz.campaignCreation=_timeStamp;
         _buffer.utmz.campaignSessions=_loc9_;
         _buffer.utmz.responseCount=_loc7_;
         _buffer.utmz.campaignTracking=_loc4_.toTrackerString();
         _debug.info(_buffer.utmz.toString(),VisualDebugMode.geek);
         _loc3_=new CampaignInfo(false,true);
         return _loc3_;
      }

      public function hasNoOverride(param1:String) : Boolean {
         var _loc2_:CampaignKey = _config.campaignKey;
         if(param1=="")
         {
            return false;
         }
         var _loc3_:Variables = new Variables(param1);
         var _loc4_:* = "";
         if(_loc3_.hasOwnProperty(_loc2_.UCNO))
         {
            _loc4_=_loc3_[_loc2_.UCNO];
            switch(_loc4_)
            {
               case "1":
                  return true;
               case "":
               case "0":
                  break;
            }
            return false;
         }
         return false;
      }

      public function getTrackerFromSearchString(param1:String) : CampaignTracker {
         var _loc2_:CampaignTracker = getOrganicCampaign();
         var _loc3_:CampaignTracker = new CampaignTracker();
         var _loc4_:CampaignKey = _config.campaignKey;
         if(param1=="")
         {
            return _loc3_;
         }
         var _loc5_:Variables = new Variables(param1);
         if(_loc5_.hasOwnProperty(_loc4_.UCID))
         {
            _loc3_.id=_loc5_[_loc4_.UCID];
         }
         if(_loc5_.hasOwnProperty(_loc4_.UCSR))
         {
            _loc3_.source=_loc5_[_loc4_.UCSR];
         }
         if(_loc5_.hasOwnProperty(_loc4_.UGCLID))
         {
            _loc3_.clickId=_loc5_[_loc4_.UGCLID];
         }
         if(_loc5_.hasOwnProperty(_loc4_.UCCN))
         {
            _loc3_.name=_loc5_[_loc4_.UCCN];
         }
         else
         {
            _loc3_.name="(not set)";
         }
         if(_loc5_.hasOwnProperty(_loc4_.UCMD))
         {
            _loc3_.medium=_loc5_[_loc4_.UCMD];
         }
         else
         {
            _loc3_.medium="(not set)";
         }
         if(_loc5_.hasOwnProperty(_loc4_.UCTR))
         {
            _loc3_.term=_loc5_[_loc4_.UCTR];
         }
         else
         {
            if((_loc2_)&&!(_loc2_.term==""))
            {
               _loc3_.term=_loc2_.term;
            }
         }
         if(_loc5_.hasOwnProperty(_loc4_.UCCT))
         {
            _loc3_.content=_loc5_[_loc4_.UCCT];
         }
         return _loc3_;
      }

      public function getOrganicCampaign() : CampaignTracker {
         var _loc1_:CampaignTracker = null;
         var _loc4_:Array = null;
         var _loc5_:OrganicReferrer = null;
         var _loc6_:String = null;
         if((isInvalidReferrer(_referrer))||(isFromGoogleCSE(_referrer,_config)))
         {
            return _loc1_;
         }
         var _loc2_:URL = new URL(_referrer);
         var _loc3_:* = "";
         if(_loc2_.hostName!="")
         {
            if(_loc2_.hostName.indexOf(".")>-1)
            {
               _loc4_=_loc2_.hostName.split(".");
               switch(_loc4_.length)
               {
                  case 2:
                     _loc3_=_loc4_[0];
                     break;
                  case 3:
                     _loc3_=_loc4_[1];
                     break;
               }
            }
         }
         if(_config.organic.match(_loc3_))
         {
            _loc5_=_config.organic.getReferrerByName(_loc3_);
            _loc6_=_config.organic.getKeywordValue(_loc5_,_loc2_.search);
            _loc1_=new CampaignTracker();
            _loc1_.source=_loc5_.engine;
            _loc1_.name="(organic)";
            _loc1_.medium="organic";
            _loc1_.term=_loc6_;
         }
         return _loc1_;
      }

      public function getDirectCampaign() : CampaignTracker {
         var _loc1_:CampaignTracker = new CampaignTracker();
         _loc1_.source="(direct)";
         _loc1_.name="(direct)";
         _loc1_.medium="(none)";
         return _loc1_;
      }

      public function isIgnoredKeyword(param1:CampaignTracker) : Boolean {
         if((param1)&&param1.medium=="organic")
         {
            return _config.organic.isIgnoredKeyword(param1.term);
         }
         return false;
      }

      private var _domainHash:Number;

      public function isIgnoredReferral(param1:CampaignTracker) : Boolean {
         if((param1)&&param1.medium=="referral")
         {
            return _config.organic.isIgnoredReferral(param1.source);
         }
         return false;
      }

      private var _debug:DebugConfiguration;

      private var _timeStamp:Number;

      public function isValid(param1:CampaignTracker) : Boolean {
         if((param1)&&(param1.isValid()))
         {
            return true;
         }
         return false;
      }

      public function getReferrerCampaign() : CampaignTracker {
         var _loc1_:CampaignTracker = null;
         if((isInvalidReferrer(_referrer))||(isFromGoogleCSE(_referrer,_config)))
         {
            return _loc1_;
         }
         var _loc2_:URL = new URL(_referrer);
         var _loc3_:String = _loc2_.hostName;
         var _loc4_:String = _loc2_.path;
         if(_loc3_.indexOf("www.")==0)
         {
            _loc3_=_loc3_.substr(4);
         }
         _loc1_=new CampaignTracker();
         _loc1_.source=_loc3_;
         _loc1_.name="(referral)";
         _loc1_.medium="referral";
         _loc1_.content=_loc4_;
         return _loc1_;
      }

      private var _referrer:String;

      private var _buffer:Buffer;
   }

}