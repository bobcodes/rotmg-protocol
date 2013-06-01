package jat
{
[CLASS961]   import fyvanod.Halak;
   import qypupet.Vuravipyg;
   import fyvanod.Sal;


   public class Tyt extends Object
   {
      public function Tyt() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var livutygok:Halak;

      public function create(param1:Vuravipyg, param2:int) : Vaz {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc3_:Vaz = new Vaz();
         var _loc4_:Sal = this.livutygok.create(param1,param2);
         _loc3_.tolyde(_loc4_);
         _loc3_.setSize(param2);
         _loc3_.gupocity(Vaz.tajowyf);
         return _loc3_;
      }
   }
[/CLASS]
}