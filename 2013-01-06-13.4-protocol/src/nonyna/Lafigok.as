package nonyna
{
[CLASS1377]   import flash.display.Sprite;
   import civop.Bymuwujez;
   import pudev.Capitu;
   import gicuzum.Qugedy;
   import tinava.Dab;
   import totuhare.Zufi;
   import flash.filters.DropShadowFilter;
   import flash.events.MouseEvent;


   public class Lafigok extends Sprite implements Bymuwujez
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Lafigok(param1:String) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super();
         this.label=param1;
         this.segilo();
         this.fenano();
         addEventListener(MouseEvent.MOUSE_OVER,this.onMouseOver);
         addEventListener(MouseEvent.ROLL_OUT,this.onRollOut);
         this.text.textChanged.add(this.onTextChanged);
         return;
      }

      public static const HEIGHT:int = 28;

      private var label:String;

      private var text:Capitu;

      private var button:Qugedy;

      public const qydubyka:Dab = new Dab();

      private function onTextChanged() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.text.y=this.button.height/2-this.text.height/2;
         this.qydubyka.dispatch();
         return;
      }

      public function getValue() : String {
         return this.label;
      }

      private function segilo() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.button=new Qugedy();
         addChild(this.button);
         return;
      }

      private function fenano() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.text=new Capitu().setSize(18).setColor(16777215).setBold(true);
         this.text.setStringBuilder(new Zufi().setParams(this.label));
         this.text.filters=[new DropShadowFilter(0,0,0)];
         this.text.x=HEIGHT+8;
         addChild(this.text);
         return;
      }

      public function setSelected(param1:Boolean) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.button.setSelected(param1);
         return;
      }

      private function onMouseOver(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.text.setColor(16768133);
         return;
      }

      private function onRollOut(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.text.setColor(16777215);
         return;
      }
   }
[/CLASS]
}