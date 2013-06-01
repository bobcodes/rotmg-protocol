package losiba
{
[CLASS1851]   import flash.utils.Dictionary;
   import flash.utils.getQualifiedClassName;
   import flash.utils.getTimer;
   import flash.system.System;
   import wacic.Console;


   public class Sinov extends Hubobag
   {
      public function Sinov(param1:Console) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super(param1);
         this.tumelojyr=new Object();
         this.lotym=new Dictionary(true);
         console.remoter.registerCallback("gc",this.gc);
         return;
      }

      private var tumelojyr:Object;

      private var lotym:Dictionary;

      private var _count:uint;

      public function pilepun(param1:Object, param2:String) : String {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc3_:String = getQualifiedClassName(param1);
         if(!param2)
         {
            param2=_loc3_+"@"+getTimer();
         }
         if(this.lotym[param1])
         {
            if(this.tumelojyr[this.lotym[param1]])
            {
               this.micuvydi(this.lotym[param1]);
            }
         }
         if(this.tumelojyr[param2])
         {
            if(this.lotym[param1]==param2)
            {
               this._count--;
            }
            else
            {
               param2=param2+"@"+getTimer()+"_"+Math.floor(Math.random()*100);
            }
         }
         this.tumelojyr[param2]=true;
         this._count++;
         this.lotym[param1]=param2;
         return param2;
      }

      public function micuvydi(param1:String) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:Object = null;
         for (_loc2_ in this.lotym)
         {
            if(this.lotym[_loc2_]==param1)
            {
               delete this.lotym[[_loc2_]];
            }
         }
         if(this.tumelojyr[param1])
         {
            delete this.tumelojyr[[param1]];
            this._count--;
         }
         return;
      }

      public function update() : void {
         var _loc9_:* = false;
         var _loc10_:* = true;
         var _loc3_:Object = null;
         var _loc4_:String = null;
         if(this._count==0)
         {
            return;
         }
         var _loc1_:Array = new Array();
         var _loc2_:Object = new Object();
         for (_loc3_ in this.lotym)
         {
            _loc2_[this.lotym[_loc3_]]=true;
         }
         for (_loc4_ in this.tumelojyr)
         {
            if(!_loc2_[_loc4_])
            {
               _loc1_.push(_loc4_);
               delete this.tumelojyr[[_loc4_]];
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
         if(remoter.remoting==Kelasydo.pabyry)
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
[/CLASS]
}