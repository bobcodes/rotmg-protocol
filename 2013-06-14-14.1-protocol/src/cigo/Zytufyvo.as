package cigo
{
   import flash.events.EventDispatcher;
   import pune.Myvilik;
   import __AS3__.vec.Vector;
   import flash.display.DisplayObjectContainer;
   import pune.Dyhaqa;


   public class Zytufyvo extends EventDispatcher implements Myvilik
   {
      public function Zytufyvo(param1:Fipyqoleb) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super();
         this.gofozod=param1;
         return;
      }

      private const dyqevigur:Vector.<DisplayObjectContainer> = new Vector.<DisplayObjectContainer>();

      public function get jod() : Vector.<DisplayObjectContainer> {
         return this.dyqevigur;
      }

      private const _handlers:Vector.<Dyhaqa> = new Vector.<Dyhaqa>();

      private var gofozod:Fipyqoleb;

      public function joderihuz(param1:DisplayObjectContainer) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:Dyhaqa = null;
         if(!this.kimozi(param1))
         {
            return;
         }
         this.dyqevigur.push(param1);
         for each (_loc2_ in this._handlers)
         {
            this.gofozod.joderihuz(param1).tunimemap(_loc2_);
         }
         dispatchEvent(new Luj(Luj.zav,param1));
         return;
      }

      public function zyvyzecad(param1:DisplayObjectContainer) : void {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc4_:Dyhaqa = null;
         var _loc2_:int = this.dyqevigur.indexOf(param1);
         if(_loc2_==-1)
         {
            return;
         }
         this.dyqevigur.splice(_loc2_,1);
         var _loc3_:Docekar = this.gofozod.jopi(param1);
         for each (_loc4_ in this._handlers)
         {
            _loc3_.qyg(_loc4_);
         }
         dispatchEvent(new Luj(Luj.jajah,param1));
         return;
      }

      public function rymututug(param1:Dyhaqa) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:DisplayObjectContainer = null;
         if(this._handlers.indexOf(param1)!=-1)
         {
            return;
         }
         this._handlers.push(param1);
         for each (_loc2_ in this.dyqevigur)
         {
            this.gofozod.joderihuz(_loc2_).tunimemap(param1);
         }
         dispatchEvent(new Luj(Luj.vujahah,null,param1));
         return;
      }

      public function mukazuv(param1:Dyhaqa) : void {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc3_:DisplayObjectContainer = null;
         var _loc2_:int = this._handlers.indexOf(param1);
         if(_loc2_==-1)
         {
            return;
         }
         this._handlers.splice(_loc2_,1);
         for each (_loc3_ in this.dyqevigur)
         {
            this.gofozod.jopi(_loc3_).qyg(param1);
         }
         dispatchEvent(new Luj(Luj.padabusot,null,param1));
         return;
      }

      public function qalah() : void {
         var _loc8_:* = false;
         var _loc9_:* = true;
         var _loc1_:DisplayObjectContainer = null;
         var _loc2_:Docekar = null;
         var _loc3_:Dyhaqa = null;
         for each (_loc1_ in this.dyqevigur)
         {
            _loc2_=this.gofozod.jopi(_loc1_);
            for each (_loc3_ in this._handlers)
            {
               _loc2_.qyg(_loc3_);
            }
         }
         return;
      }

      private function kimozi(param1:DisplayObjectContainer) : Boolean {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:DisplayObjectContainer = null;
         for each (_loc2_ in this.dyqevigur)
         {
            if(param1==_loc2_)
            {
               return false;
            }
            if((_loc2_.contains(param1))||(param1.contains(_loc2_)))
            {
               throw new Error("Containers can not be nested");
            }
            else
            {
               continue;
            }
         }
         return true;
      }
   }

}