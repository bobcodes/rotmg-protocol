package gib
{
   import flash.display.Sprite;
   import cadawowy.Kacyhoty;
   import movimet.Lufub;
   import qazoz.Luwehub;
   import tulunyno.Hugyqufyq;
   import nec.Sire;
   import flash.filters.DropShadowFilter;
   import flash.events.MouseEvent;


   public class Nagocas extends Sprite implements Kacyhoty
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Nagocas(param1:String) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super();
         this.label=param1;
         this.wabetaji();
         this.hajul();
         addEventListener(MouseEvent.MOUSE_OVER,this.onMouseOver);
         addEventListener(MouseEvent.ROLL_OUT,this.onRollOut);
         this.text.textChanged.add(this.onTextChanged);
         return;
      }

      public static const HEIGHT:int = 28;

      private var label:String;

      private var text:Lufub;

      private var button:Luwehub;

      public const tom:Hugyqufyq = new Hugyqufyq();

      private function onTextChanged() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.text.y=this.button.height/2-this.text.height/2;
         this.tom.dispatch();
         return;
      }

      public function getValue() : String {
         return this.label;
      }

      private function wabetaji() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.button=new Luwehub();
         addChild(this.button);
         return;
      }

      private function hajul() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.text=new Lufub().setSize(18).setColor(16777215).setBold(true);
         this.text.setStringBuilder(new Sire().setParams(this.label));
         this.text.filters=[new DropShadowFilter(0,0,0)];
         this.text.x=HEIGHT+8;
         addChild(this.text);
         return;
      }

      public function setSelected(param1:Boolean) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.button.setSelected(param1);
         return;
      }

      private function onMouseOver(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.text.setColor(16768133);
         return;
      }

      private function onRollOut(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.text.setColor(16777215);
         return;
      }
   }

}