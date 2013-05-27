package difu
{
   import liwaqa.Pydep;
   import tulunyno.Hugyqufyq;
   import movimet.Lufub;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.filters.DropShadowFilter;
   import nec.Nara;
   import jybazigiq.Litewev;
   import gyzesuqu.Zojygese;
   import flash.events.MouseEvent;


   public class Necof extends Pydep
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Necof() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         this.wolarisoz=Litewev.jeroqonaw();
         this.siperu=new Zojygese(this,MouseEvent.CLICK);
         tabChildren=false;
         tabEnabled=false;
         this.lysimi();
         return;
      }

      private static const lacasoka:int = 16;

      public var siperu:Hugyqufyq;

      private var qyjoc:Lufub;

      private var newujir:DisplayObject;

      private var jyti:int = -1;

      private var wolarisoz:Sprite;

      public function vonehy(param1:int) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.jyti!=param1)
         {
            this.jyti=param1;
            this.pyvad();
         }
         return;
      }

      public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         parent.removeChild(this);
         return;
      }

      private function lysimi() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         addChild(this.wolarisoz);
         this.newujir=makeIcon();
         addChild(this.newujir);
         this.kalonewem();
         this.vonehy(0);
         return;
      }

      private function kalonewem() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.qyjoc=new Lufub().setSize(lacasoka).setColor(16777215);
         this.qyjoc.filters=[new DropShadowFilter(0,0,0)];
         this.pyvad();
         addChild(this.qyjoc);
         return;
      }

      private function pyvad() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.qyjoc.textChanged.addOnce(this.onTextChanged);
         this.qyjoc.setStringBuilder(new Nara(this.jyti.toString()+" day"+(this.jyti>1?"s":"")));
         return;
      }

      private function onTextChanged() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         positionText(this.newujir,this.qyjoc);
         return;
      }
   }

}