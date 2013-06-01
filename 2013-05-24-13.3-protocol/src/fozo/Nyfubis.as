package fozo
{
   import flash.events.EventDispatcher;
   import valatom.Bobibu;
   import __AS3__.vec.Vector;
   import flash.display.DisplayObjectContainer;
   import valatom.Nageqyned;


   public class Nyfubis extends EventDispatcher implements Bobibu
   {
      public function Nyfubis(param1:Zajys) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super();
         this.limefaqy=param1;
         return;
      }

      private const picy:Vector.<DisplayObjectContainer> = new Vector.<DisplayObjectContainer>();

      public function get rebizozub() : Vector.<DisplayObjectContainer> {
         return this.picy;
      }

      private const _handlers:Vector.<Nageqyned> = new Vector.<Nageqyned>();

      private var limefaqy:Zajys;

      public function neje(param1:DisplayObjectContainer) : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:Nageqyned = null;
         if(!this.jumoqycaj(param1))
         {
            return;
         }
         this.picy.push(param1);
         for each (_loc2_ in this._handlers)
         {
            this.limefaqy.neje(param1).zuza(_loc2_);
         }
         dispatchEvent(new Kamyzona(Kamyzona.tebowomyq,param1));
         return;
      }

      public function mego(param1:DisplayObjectContainer) : void {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc4_:Nageqyned = null;
         var _loc2_:int = this.picy.indexOf(param1);
         if(_loc2_==-1)
         {
            return;
         }
         this.picy.splice(_loc2_,1);
         var _loc3_:Butyk = this.limefaqy.sijymad(param1);
         for each (_loc4_ in this._handlers)
         {
            _loc3_.tala(_loc4_);
         }
         dispatchEvent(new Kamyzona(Kamyzona.wimug,param1));
         return;
      }

      public function dehy(param1:Nageqyned) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:DisplayObjectContainer = null;
         if(this._handlers.indexOf(param1)!=-1)
         {
            return;
         }
         this._handlers.push(param1);
         for each (_loc2_ in this.picy)
         {
            this.limefaqy.neje(_loc2_).zuza(param1);
         }
         dispatchEvent(new Kamyzona(Kamyzona.burucyn,null,param1));
         return;
      }

      public function woc(param1:Nageqyned) : void {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc3_:DisplayObjectContainer = null;
         var _loc2_:int = this._handlers.indexOf(param1);
         if(_loc2_==-1)
         {
            return;
         }
         this._handlers.splice(_loc2_,1);
         for each (_loc3_ in this.picy)
         {
            this.limefaqy.sijymad(_loc3_).tala(param1);
         }
         dispatchEvent(new Kamyzona(Kamyzona.zicy,null,param1));
         return;
      }

      public function ruqydebem() : void {
         var _loc8_:* = false;
         var _loc9_:* = true;
         var _loc1_:DisplayObjectContainer = null;
         var _loc2_:Butyk = null;
         var _loc3_:Nageqyned = null;
         for each (_loc1_ in this.picy)
         {
            _loc2_=this.limefaqy.sijymad(_loc1_);
            for each (_loc3_ in this._handlers)
            {
               _loc2_.tala(_loc3_);
            }
         }
         return;
      }

      private function jumoqycaj(param1:DisplayObjectContainer) : Boolean {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:DisplayObjectContainer = null;
         for each (_loc2_ in this.picy)
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