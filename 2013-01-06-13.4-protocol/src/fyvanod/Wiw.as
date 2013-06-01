package fyvanod
{
[CLASS973]   import kezafezad.Lazahyq;
   import tidi.Dak;
   import tinava.Dab;
   import kezafezad.Vinac;
   import __AS3__.vec.Vector;
   import flash.display.DisplayObject;
   import flash.events.MouseEvent;


   public class Wiw extends Lazahyq
   {
      public function Wiw(param1:Array) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super();
         tadynamo(this.zurawuv());
         setItems(this.polatilo(param1));
         this.ready.addOnce(mepipu);
         return;
      }

      private const juwocez:Dak = new Dak();

      public const ready:Dab = this.juwocez.complete;

      public const selected:Dab = new Dab(String);

      private function zurawuv() : Vinac {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Vinac = new Vinac();
         _loc1_.qege(2);
         return _loc1_;
      }

      private function polatilo(param1:Array) : Vector.<DisplayObject> {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:Vector.<DisplayObject> = new Vector.<DisplayObject>();
         var _loc3_:* = 0;
         while(_loc3_<param1.length)
         {
            _loc2_.push(this.subywetus(param1[_loc3_]));
            _loc3_++;
         }
         return _loc2_;
      }

      private function subywetus(param1:Object) : Lyzil {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Lyzil = new Lyzil(param1.category,param1.info);
         _loc2_.addEventListener(MouseEvent.CLICK,this.nonolypyr);
         this.juwocez.push(_loc2_.textChanged);
         return _loc2_;
      }

      private function nonolypyr(param1:MouseEvent) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Lyzil = param1.currentTarget as Lyzil;
         this.selected.dispatch(_loc2_.info);
         return;
      }
   }
[/CLASS]
}