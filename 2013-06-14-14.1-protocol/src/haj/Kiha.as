package haj
{
   import tytojonib.Kyjefe;
   import fanij.Namejaja;
   import fanij.Mitat;
   import fanij.Hizyn;


   public class Kiha extends Kyjefe
   {
      public function Kiha() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var view:FusionStrength;

      public var cybeco:Namejaja;

      public var hibuc:Mitat;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(!this.hibuc.baluq)
         {
            this.hibuc.baluq=this.cybeco.tigosulo();
         }
         if(this.hibuc.remytyto())
         {
            this.view.nuwe(Hizyn.koryfomow(this.hibuc.baluq,this.hibuc.ticowob));
         }
         else
         {
            this.view.reset();
         }
         return;
      }
   }

}