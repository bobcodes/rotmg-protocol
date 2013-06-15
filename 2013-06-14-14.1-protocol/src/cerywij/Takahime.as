package cerywij
{
   import tytojonib.Kyjefe;
   import pusy.Mun;
   import wenono.Pirocuvir;
   import com.company.assembleegameclient.objects.Player;
   import flash.events.MouseEvent;


   public class Takahime extends Kyjefe
   {
      public function Takahime() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:Hekogesa;

      public var hibufuryn:Mun;

      public var repevony:Far;

      public var guk:Pirocuvir;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.tywaguku.add(this.gubu);
         this.hibufuryn.add(this.wyseg);
         this.guk.add(this.penaqyqoj);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.tywaguku.remove(this.gubu);
         this.hibufuryn.remove(this.wyseg);
         return;
      }

      private function wyseg(param1:Player) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.view.draw(param1);
         return;
      }

      private function gubu(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.view.lehekepa==Hekogesa.welec)
         {
            this.view.pemob();
            this.repevony.dispatch(this.view);
         }
         return;
      }

      private function penaqyqoj() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.wacaku();
         return;
      }
   }

}