package fik
{
   import cycuka.Voli;
   import pusy.Quwarad;
   import dyca.Mes;
   import niqe.Nuder;
   import ranu.Fiwot;
   import gycu.Feliro;
   import gycu.Begotyl;
   import gycu.Levoje;


   public class Gekyb extends Object
   {
      public function Gekyb() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var language:String;

      public var model:Voli;

      public var gifogelap:Quwarad;

      public var difas:Mes;

      public var zop:Nuder;

      public var hitahoc:Vofymy;

      public var lypadodec:Fiwot;

      public var bilizaw:Feliro;

      public function execute() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.model.folocibe(this.language);
         this.gifogelap.dispatch();
         var _loc1_:Begotyl = new Begotyl();
         _loc1_.add(this.zop);
         _loc1_.add(new Levoje(this.hitahoc));
         _loc1_.add(new Levoje(this.lypadodec));
         this.bilizaw.add(_loc1_);
         _loc1_.start();
         return;
      }
   }

}