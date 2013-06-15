package tilo
{
   import tytojonib.Kyjefe;
   import car.Pijiz;
   import car.Levoge;
   import fodopud.Gebohuk;
   import wavybyjec.Sucy;


   public class Jonygupe extends Kyjefe
   {
      public function Jonygupe() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var sodoqif:Pijiz;

      public var view:PackageButton;

      public var nuvet:Levoge;

      public var byfybuvu:Gebohuk;

      private var jefitizij:Sucy;

      private var fefenu:Boolean;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.nuvet.zolevotid.add(this.qok);
         this.view.peqe.add(this.munufoqul);
         this.view.init();
         if(this.nuvet.qycybewo())
         {
            this.raqy();
         }
         else
         {
            this.view.visible=false;
            this.sodoqif.start();
         }
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.peqe.remove(this.munufoqul);
         if(this.fefenu)
         {
            this.jefitizij.zazyc.remove(this.lonadiwuh);
            this.jefitizij.jirutuvab.remove(this.difik);
            this.jefitizij.zolevotid.remove(this.qok);
         }
         return;
      }

      private function difik(param1:int) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.view.his(param1);
         return;
      }

      private function lonadiwuh(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(param1<=0)
         {
            this.view.visible=false;
         }
         else
         {
            this.view.lylebype(param1);
         }
         return;
      }

      private function qok() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.visible=true;
         this.raqy();
         return;
      }

      private function raqy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.jefitizij=this.nuvet.ripazys();
         this.fefenu=true;
         this.jefitizij.zazyc.add(this.lonadiwuh);
         this.jefitizij.jirutuvab.add(this.difik);
         this.view.his(this.jefitizij.horekafoqa());
         this.view.lylebype(this.jefitizij.quantity);
         return;
      }

      private function munufoqul() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.byfybuvu.dispatch(this.nuvet.ripazys().packageID);
         return;
      }
   }

}