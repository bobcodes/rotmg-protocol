package zekeqa
{
   import flash.display.Sprite;
   import tyk.Tidys;
   import hivysif.Guzowoja;
   import bemav.Taf;
   import mukyrosu.Qanyduk;
   import jediwip.Kybidu;
   import flash.filters.DropShadowFilter;
   import flash.events.MouseEvent;


   public class Mykiq extends Sprite implements Tidys
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Mykiq(param1:String) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super();
         this.label=param1;
         this.hacovys();
         this.benelimy();
         addEventListener(MouseEvent.MOUSE_OVER,this.onMouseOver);
         addEventListener(MouseEvent.ROLL_OUT,this.onRollOut);
         this.text.textChanged.add(this.onTextChanged);
         return;
      }

      public static const HEIGHT:int = 28;

      private var label:String;

      private var text:Guzowoja;

      private var button:Taf;

      public const rek:Qanyduk = new Qanyduk();

      private function onTextChanged() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.text.y=this.button.height/2-this.text.height/2;
         this.rek.dispatch();
         return;
      }

      public function getValue() : String {
         return this.label;
      }

      private function hacovys() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.button=new Taf();
         addChild(this.button);
         return;
      }

      private function benelimy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.text=new Guzowoja().setSize(18).setColor(16777215).setBold(true);
         this.text.setStringBuilder(new Kybidu().setParams(this.label));
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