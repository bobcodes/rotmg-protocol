package hine
{
[CLASS1139]   import tysenyzy.Zovisis;
   import setuv.Tufyz;
   import tuzopite.Jomytejod;
   import tuzopite.Diwewoqem;
   import tuzopite.Lyzepemif;
   import natus.Hewoda;
   import setuv.Vityvu;
   import aaa.Parameters;


   public class Qafiji extends Zovisis
   {
      public function Qafiji() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:Myr;

      public var model:Tufyz;

      public var dyrisicis:Jomytejod;

      public var vypenuvoh:Diwewoqem;

      public var vopem:Lyzepemif;

      public var kite:Hesefaho;

      public var setup:Hewoda;

      override public function initialize() : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:Vityvu = null;
         this.view.setup(this.model);
         for each (_loc1_ in this.model.ziwe)
         {
            this.view.qakaza(this.kite.make(_loc1_,true));
         }
         this.view.sil();
         this.dyrisicis.add(this.tavugu);
         this.vypenuvoh.add(this.kupygagik);
         this.vopem.add(this.hefud);
         this.hefud(Vityvu.make(Parameters.pyha,this.hajiq()));
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.dyrisicis.remove(this.tavugu);
         this.vypenuvoh.remove(this.kupygagik);
         this.vopem.remove(this.hefud);
         return;
      }

      private function tavugu(param1:Boolean, param2:String) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.view.y=this.model.mykubowob.height-(param1?this.model.dud:0);
         return;
      }

      private function kupygagik(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(param1>0)
         {
            this.view.tyj();
         }
         else
         {
            if(param1<0)
            {
               this.view.dufol();
            }
         }
         return;
      }

      private function hefud(param1:Vityvu) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.view.qakaza(this.kite.make(param1));
         this.view.sil();
         return;
      }

      private function hajiq() : String {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:String = this.setup.cakavuz();
         _loc1_=_loc1_.replace(new RegExp("<font .+>(.+)<\\/font>","g"),"$1");
         return _loc1_;
      }
   }
[/CLASS]
}