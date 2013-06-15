package racitagy
{
   import haj.Sevuvomyn;
   import fanij.Cun;
   import haj.Linocele;


   public class Tehiv extends Object
   {
      public function Tehiv() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var resemuci:Sevuvomyn;

      public function create(param1:Cun, param2:int) : Gecibo {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc3_:Gecibo = new Gecibo();
         var _loc4_:Linocele = this.resemuci.create(param1,param2);
         _loc3_.gezycecip(_loc4_);
         _loc3_.setSize(param2);
         _loc3_.qojedyna(Gecibo.jidy);
         return _loc3_;
      }
   }

}