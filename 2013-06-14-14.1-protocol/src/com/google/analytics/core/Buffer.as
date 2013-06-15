package com.google.analytics.core
{
   import flash.net.SharedObject;
   import flash.net.SharedObjectFlushStatus;
   import flash.events.NetStatusEvent;
   import com.google.analytics.data.UTMV;
   import com.google.analytics.data.UTMX;
   import com.google.analytics.data.UTMZ;
   import com.google.analytics.data.UTMA;
   import com.google.analytics.data.UTMB;
   import com.google.analytics.data.UTMC;
   import com.google.analytics.data.UTMK;
   import com.google.analytics.debug.VisualDebugMode;
   import com.google.analytics.debug.DebugConfiguration;
   import com.google.analytics.v4.Configuration;


   public dynamic class Buffer extends Object
   {
      public function Buffer(param1:Configuration, param2:DebugConfiguration, param3:Boolean=false, param4:Object=null) {
         var _loc5_:String = null;
         super();
         _config=param1;
         _debug=param2;
         _data=param4;
         _volatile=param3;
         if(_volatile)
         {
            _OBJ=new Object();
            if(_data)
            {
               for (_loc5_ in _data)
               {
                  _OBJ[_loc5_]=_data[_loc5_];
               }
            }
         }
         return;
      }

      private var _SO:SharedObject;

      public function save() : void {
         var flushStatus:String = null;
         if(!isVolatile())
         {
            flushStatus=null;
            try
            {
               flushStatus=_SO.flush();
            }
            catch(e:Error)
            {
               _debug.warning("Error...Could not write SharedObject to disk");
            }
            switch(null)
            {
               case SharedObjectFlushStatus.PENDING:
                  _debug.info("Requesting permission to save object...");
                  _SO.addEventListener(NetStatusEvent.NET_STATUS,_onFlushStatus);
                  break;
               case SharedObjectFlushStatus.FLUSHED:
                  _debug.info("Value flushed to disk.");
                  break;
            }
         }
         return;
      }

      public function get utmv() : UTMV {
         if(!hasUTMV())
         {
            _createUMTV();
         }
         return _utmv;
      }

      private var _data:Object;

      public function get utmx() : UTMX {
         if(!hasUTMX())
         {
            _createUMTX();
         }
         return _utmx;
      }

      public function get utmz() : UTMZ {
         if(!hasUTMZ())
         {
            _createUMTZ();
         }
         return _utmz;
      }

      public function hasUTMA() : Boolean {
         if(_utma)
         {
            return true;
         }
         return false;
      }

      public function hasUTMB() : Boolean {
         if(_utmb)
         {
            return true;
         }
         return false;
      }

      public function hasUTMC() : Boolean {
         if(_utmc)
         {
            return true;
         }
         return false;
      }

      public function clearCookies() : void {
         utma.reset();
         utmb.reset();
         utmc.reset();
         utmz.reset();
         utmv.reset();
         utmk.reset();
         return;
      }

      public function resetCurrentSession() : void {
         _clearUTMB();
         _clearUTMC();
         save();
         return;
      }

      public function hasUTMK() : Boolean {
         if(_utmk)
         {
            return true;
         }
         return false;
      }

      private var _OBJ:Object;

      public function getLinkerUrl(param1:String="", param2:Boolean=false) : String {
         var _loc3_:String = toLinkerParams();
         var _loc4_:String = param1;
         var _loc5_:Array = param1.split("#");
         if(_loc3_)
         {
            if(param2)
            {
               if(1>=_loc5_.length)
               {
                  _loc4_=_loc4_+("#"+_loc3_);
               }
               else
               {
                  _loc4_=_loc4_+("&"+_loc3_);
               }
            }
            else
            {
               if(1>=_loc5_.length)
               {
                  if(param1.indexOf("?")>-1)
                  {
                     _loc4_=_loc4_+"&";
                  }
                  else
                  {
                     _loc4_=_loc4_+"?";
                  }
                  _loc4_=_loc4_+_loc3_;
               }
               else
               {
                  _loc4_=_loc5_[0];
                  if(param1.indexOf("?")>-1)
                  {
                     _loc4_=_loc4_+"&";
                  }
                  else
                  {
                     _loc4_=_loc4_+"?";
                  }
                  _loc4_=_loc4_+(_loc3_+"#"+_loc5_[1]);
               }
            }
         }
         return _loc4_;
      }

      public function generateCookiesHash() : Number {
         var _loc1_:* = "";
         _loc1_=_loc1_+utma.valueOf();
         _loc1_=_loc1_+utmb.valueOf();
         _loc1_=_loc1_+utmc.valueOf();
         _loc1_=_loc1_+utmx.valueOf();
         _loc1_=_loc1_+utmz.valueOf();
         _loc1_=_loc1_+utmv.valueOf();
         return Utils.generateHash(_loc1_);
      }

      private function _createUMTA() : void {
         _utma=new UTMA();
         _utma.proxy=this;
         return;
      }

      private function _createUMTB() : void {
         _utmb=new UTMB();
         _utmb.proxy=this;
         return;
      }

      private function _createUMTC() : void {
         _utmc=new UTMC();
         return;
      }

      public function hasUTMV() : Boolean {
         if(_utmv)
         {
            return true;
         }
         return false;
      }

      private function _createUMTK() : void {
         _utmk=new UTMK();
         _utmk.proxy=this;
         return;
      }

      public function hasUTMX() : Boolean {
         if(_utmx)
         {
            return true;
         }
         return false;
      }

      public function hasUTMZ() : Boolean {
         if(_utmz)
         {
            return true;
         }
         return false;
      }

      private function _createUMTV() : void {
         _utmv=new UTMV();
         _utmv.proxy=this;
         return;
      }

      private function _createUMTX() : void {
         _utmx=new UTMX();
         _utmx.proxy=this;
         return;
      }

      private function _createUMTZ() : void {
         _utmz=new UTMZ();
         _utmz.proxy=this;
         return;
      }

      public function updateUTMA(param1:Number) : void {
         if(_debug.verbose)
         {
            _debug.info("updateUTMA( "+param1+" )",VisualDebugMode.advanced);
         }
         if(!utma.isEmpty())
         {
            if(isNaN(utma.sessionCount))
            {
               utma.sessionCount=1;
            }
            else
            {
               utma.sessionCount=utma.sessionCount+1;
            }
            utma.lastTime=utma.currentTime;
            utma.currentTime=param1;
         }
         return;
      }

      public function isGenuine() : Boolean {
         if(!hasUTMK())
         {
            return true;
         }
         return utmk.hash==generateCookiesHash();
      }

      private function _onFlushStatus(param1:NetStatusEvent) : void {
         _debug.info("User closed permission dialog...");
         switch(null)
         {
            case "SharedObject.Flush.Success":
               _debug.info("User granted permission -- value saved.");
               break;
            case "SharedObject.Flush.Failed":
               _debug.info("User denied permission -- value not saved.");
               break;
         }
         _SO.removeEventListener(NetStatusEvent.NET_STATUS,_onFlushStatus);
         return;
      }

      public function toLinkerParams() : String {
         var _loc1_:* = "";
         _loc1_=_loc1_+utma.toURLString();
         _loc1_=_loc1_+("&"+utmb.toURLString());
         _loc1_=_loc1_+("&"+utmc.toURLString());
         _loc1_=_loc1_+("&"+utmx.toURLString());
         _loc1_=_loc1_+("&"+utmz.toURLString());
         _loc1_=_loc1_+("&"+utmv.toURLString());
         _loc1_=_loc1_+("&__utmk="+generateCookiesHash());
         return _loc1_;
      }

      private function _clearUTMA() : void {
         _utma=null;
         if(!isVolatile())
         {
            _SO.data.utma=null;
            GlobalNotificationActionte _SO.data[utma];
         }
         return;
      }

      private function _clearUTMC() : void {
         _utmc=null;
         return;
      }

      private function _clearUTMB() : void {
         _utmb=null;
         if(!isVolatile())
         {
            _SO.data.utmb=null;
            GlobalNotificationActionte _SO.data[utmb];
         }
         return;
      }

      public function update(param1:String, param2:*) : void {
         if(isVolatile())
         {
            _OBJ[param1]=param2;
         }
         else
         {
            _SO.data[param1]=param2;
         }
         return;
      }

      private var _utmb:UTMB;

      private var _utmc:UTMC;

      public function createSO() : void {
         var saveSO:Boolean = false;
         UTMZ.defaultTimespan=_config.conversionTimeout;
         UTMB.defaultTimespan=_config.sessionTimeout;
         if(!_volatile)
         {
            try
            {
               _SO=SharedObject.getLocal(_config.cookieName,_config.cookiePath);
            }
            catch(e:Error)
            {
               if(_debug.active)
               {
                  _debug.warning("Shared Object "+_config.cookieName+" failed to be set\nreason: "+e.message);
               }
            }
            saveSO=false;
            if(_SO.data.utma)
            {
               if(!hasUTMA())
               {
                  _createUMTA();
               }
               _utma.fromSharedObject(_SO.data.utma);
               if(_debug.verbose)
               {
                  _debug.info("found: "+_utma.toString(true),VisualDebugMode.geek);
               }
               if(_utma.isExpired())
               {
                  if(_debug.verbose)
                  {
                     _debug.warning("UTMA has expired",VisualDebugMode.advanced);
                  }
                  _clearUTMA();
                  saveSO=true;
               }
            }
            if(_SO.data.utmb)
            {
               if(!hasUTMB())
               {
                  _createUMTB();
               }
               _utmb.fromSharedObject(_SO.data.utmb);
               if(_debug.verbose)
               {
                  _debug.info("found: "+_utmb.toString(true),VisualDebugMode.geek);
               }
               if(_utmb.isExpired())
               {
                  if(_debug.verbose)
                  {
                     _debug.warning("UTMB has expired",VisualDebugMode.advanced);
                  }
                  _clearUTMB();
                  saveSO=true;
               }
            }
            if(_SO.data.utmc)
            {
               GlobalNotificationActionte _SO.data[utmc];
               saveSO=true;
            }
            if(_SO.data.utmk)
            {
               if(!hasUTMK())
               {
                  _createUMTK();
               }
               _utmk.fromSharedObject(_SO.data.utmk);
               if(_debug.verbose)
               {
                  _debug.info("found: "+_utmk.toString(),VisualDebugMode.geek);
               }
            }
            if(!hasUTMX())
            {
               _createUMTX();
            }
            if(_SO.data.utmv)
            {
               if(!hasUTMV())
               {
                  _createUMTV();
               }
               _utmv.fromSharedObject(_SO.data.utmv);
               if(_debug.verbose)
               {
                  _debug.info("found: "+_utmv.toString(true),VisualDebugMode.geek);
               }
               if(_utmv.isExpired())
               {
                  if(_debug.verbose)
                  {
                     _debug.warning("UTMV has expired",VisualDebugMode.advanced);
                  }
                  _clearUTMV();
                  saveSO=true;
               }
            }
            if(_SO.data.utmz)
            {
               if(!hasUTMZ())
               {
                  _createUMTZ();
               }
               _utmz.fromSharedObject(_SO.data.utmz);
               if(_debug.verbose)
               {
                  _debug.info("found: "+_utmz.toString(true),VisualDebugMode.geek);
               }
               if(_utmz.isExpired())
               {
                  if(_debug.verbose)
                  {
                     _debug.warning("UTMZ has expired",VisualDebugMode.advanced);
                  }
                  _clearUTMZ();
                  saveSO=true;
               }
            }
            if(saveSO)
            {
               save();
            }
         }
         return;
      }

      private var _utma:UTMA;

      private function _clearUTMZ() : void {
         _utmz=null;
         if(!isVolatile())
         {
            _SO.data.utmz=null;
            GlobalNotificationActionte _SO.data[utmz];
         }
         return;
      }

      private var _debug:DebugConfiguration;

      private var _utmk:UTMK;

      private function _clearUTMV() : void {
         _utmv=null;
         if(!isVolatile())
         {
            _SO.data.utmv=null;
            GlobalNotificationActionte _SO.data[utmv];
         }
         return;
      }

      private var _config:Configuration;

      public function isVolatile() : Boolean {
         return _volatile;
      }

      private var _utmv:UTMV;

      private var _utmx:UTMX;

      private var _utmz:UTMZ;

      public function get utma() : UTMA {
         if(!hasUTMA())
         {
            _createUMTA();
         }
         return _utma;
      }

      public function get utmb() : UTMB {
         if(!hasUTMB())
         {
            _createUMTB();
         }
         return _utmb;
      }

      public function get utmc() : UTMC {
         if(!hasUTMC())
         {
            _createUMTC();
         }
         return _utmc;
      }

      private var _volatile:Boolean;

      public function get utmk() : UTMK {
         if(!hasUTMK())
         {
            _createUMTK();
         }
         return _utmk;
      }
   }

}