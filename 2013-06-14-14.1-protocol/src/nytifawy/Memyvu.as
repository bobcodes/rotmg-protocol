package nytifawy
{
   import tytojonib.Kyjefe;
   import pumoc.Zesihag;
   import tumi.Lukud;
   import tumi.Zimydato;
   import tumi.Resan;
   import daqun.Qobeta;
   import pumoc.Juc;
   import com.company.assembleegameclient.parameters.Parameters;


   public class Memyvu extends Kyjefe
   {
      public function Memyvu() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var view:Jokerewa;

      public var model:Zesihag;

      public var dopypim:Lukud;

      public var racyg:Zimydato;

      public var buhuhoj:Resan;

      public var vanotogo:Hehakabi;

      public var setup:Qobeta;

      override public function initialize() : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:Juc = null;
         this.view.setup(this.model);
         for each (_loc1_ in this.model.femis)
         {
            this.view.vucevaz(this.vanotogo.make(_loc1_,true));
         }
         this.view.lujyt();
         this.dopypim.add(this.huhu);
         this.racyg.add(this.kupocufar);
         this.buhuhoj.add(this.qecaru);
         this.qecaru(Juc.make(Parameters.wyfa,this.johymi()));
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.dopypim.remove(this.huhu);
         this.racyg.remove(this.kupocufar);
         this.buhuhoj.remove(this.qecaru);
         return;
      }

      private function huhu(param1:Boolean, param2:String) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.view.y=this.model.nabo.height-(param1?this.model.vupute:0);
         return;
      }

      private function kupocufar(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(param1>0)
         {
            this.view.zaf();
         }
         else
         {
            if(param1<0)
            {
               this.view.vyqe();
            }
         }
         return;
      }

      private function qecaru(param1:Juc) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.view.vucevaz(this.vanotogo.make(param1));
         return;
      }

      private function johymi() : String {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:String = this.setup.vodupol();
         _loc1_=_loc1_.replace(new RegExp("<font .+>(.+)<\\/font>","g"),"$1");
         return _loc1_;
      }
   }

}