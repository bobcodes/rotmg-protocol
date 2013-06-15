package wenono
{
   import tytojonib.Kyjefe;
   import civino.Wyvudasev;


   public class Quzazodav extends Kyjefe
   {
      public function Quzazodav() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:ChooseNameRegisterDialog;

      public var mewyk:Wyvudasev;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.register.add(this.mijy);
         this.view.cancel.add(this.onCancel);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.register.remove(this.mijy);
         this.view.cancel.remove(this.onCancel);
         return;
      }

      private function mijy() : void {
         var [OFS3]_loc1_:* = [/OFS]false;
         var [OFS4]_loc2_:* = [/OFS]true;
         this.[OFS8]onCancel[/OFS][OFS8]([/OFS][OFS8])[/OFS];
         this.[OFS13]mewyk[/OFS].[OFS16]dispatch[/OFS][OFS16]([/OFS][OFS16])[/OFS];
         [OFS19]return[/OFS];
      }

      private function onCancel() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.parent.removeChild(this.view);
         return;
      }
   }

}