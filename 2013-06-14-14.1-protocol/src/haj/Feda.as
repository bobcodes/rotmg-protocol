package haj
{
   import pokaceseb.Qyfunasuw;
   import wenono.Nuri;
   import mukyrosu.Qanyduk;
   import pokaceseb.Tuk;
   import __AS3__.vec.Vector;
   import flash.display.DisplayObject;
   import flash.events.MouseEvent;


   public class Feda extends Qyfunasuw
   {
      public function Feda(param1:Array) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super();
         cegoh(this.qidig());
         setItems(this.mibuq(param1));
         this.ready.addOnce(zuza);
         return;
      }

      private const ryfoc:Nuri = new Nuri();

      public const ready:Qanyduk = this.ryfoc.complete;

      public const selected:Qanyduk = new Qanyduk(String);

      private function qidig() : Tuk {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Tuk = new Tuk();
         _loc1_.wysycoviw(2);
         return _loc1_;
      }

      private function mibuq(param1:Array) : Vector.<DisplayObject> {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:Vector.<DisplayObject> = new Vector.<DisplayObject>();
         var _loc3_:* = 0;
         while(_loc3_<param1.length)
         {
            _loc2_.push(this.kugagod(param1[_loc3_]));
            _loc3_++;
         }
         return _loc2_;
      }

      private function kugagod(param1:Object) : Titusope {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Titusope = new Titusope(param1.category,param1.info);
         _loc2_.addEventListener(MouseEvent.CLICK,this.zug);
         this.ryfoc.push(_loc2_.textChanged);
         return _loc2_;
      }

      private function zug(param1:MouseEvent) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Titusope = param1.currentTarget as Titusope;
         this.selected.dispatch(_loc2_.info);
         return;
      }
   }

}