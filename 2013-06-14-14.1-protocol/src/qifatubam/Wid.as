package qifatubam
{
   import flash.utils.Dictionary;
   import flash.utils.getQualifiedClassName;
   import flash.utils.getTimer;
   import flash.system.System;
   import zipirytab.Console;


   public class Wid extends Viq
   {
      public function Wid(param1:Console) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super(param1);
         this.hywidi=new Object();
         this.mup=new Dictionary(true);
         console.remoter.registerCallback("gc",this.gc);
         return;
      }

      private var hywidi:Object;

      private var mup:Dictionary;

      private var _count:uint;

      public function fujaniqiv(param1:Object, param2:String) : String {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc3_:String = getQualifiedClassName(param1);
         if(!param2)
         {
            param2=_loc3_+"@"+getTimer();
         }
         if(this.mup[param1])
         {
            if(this.hywidi[this.mup[param1]])
            {
               this.fysi(this.mup[param1]);
            }
         }
         if(this.hywidi[param2])
         {
            if(this.mup[param1]==param2)
            {
               this._count--;
            }
            else
            {
               param2=param2+"@"+getTimer()+"_"+Math.floor(Math.random()*100);
            }
         }
         this.hywidi[param2]=true;
         this._count++;
         this.mup[param1]=param2;
         return param2;
      }

      public function fysi(param1:String) : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:Object = null;
         for (_loc2_ in this.mup)
         {
            if(this.mup[_loc2_]==param1)
            {
               GlobalNotificationActionte this.mup[[_loc2_]];
            }
         }
         if(this.hywidi[param1])
         {
            GlobalNotificationActionte this.hywidi[[param1]];
            this._count--;
         }
         return;
      }

      public function update() : void {
         var _loc9_:* = true;
         var _loc10_:* = false;
         var _loc3_:Object = null;
         var _loc4_:String = null;
         if(this._count==0)
         {
            return;
         }
         var _loc1_:Array = new Array();
         var _loc2_:Object = new Object();
         for (_loc3_ in this.mup)
         {
            _loc2_[this.mup[_loc3_]]=true;
         }
         for (_loc4_ in this.hywidi)
         {
            if(!_loc2_[_loc4_])
            {
               _loc1_.push(_loc4_);
               GlobalNotificationActionte this.hywidi[[_loc4_]];
               this._count--;
            }
         }
         if(_loc1_.length)
         {
            report("<b>GARBAGE COLLECTED "+_loc1_.length+" item(s): </b>"+_loc1_.join(", "),-2);
         }
         return;
      }

      public function get count() : uint {
         return this._count;
      }

      public function gc() : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var ok:Boolean = false;
         var str:String = null;
         if(remoter.remoting==Segar.bufiti)
         {
            try
            {
               remoter.send("gc");
            }
            catch(e:Error)
            {
               report(e,10);
            }
            return;
         }
         try
         {
            if(System["gc"]!=null)
            {
               System["gc"]();
               ok=true;
            }
         }
         catch(e:Error)
         {
         }
         str="Manual garbage collection "+(ok?"successful.":"FAILED. You need debugger version of flash player.");
         report(str,ok?-1:10);
         return;
      }
   }

}