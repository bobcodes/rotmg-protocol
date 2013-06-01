package tuci
{
[CLASS396]   import bikyvym.Mive;
   import pogefeqeh.Wahovy;
   import wufyba.Cobyjowek;
   import suzu.Naneciry;
   import ryqerovo.Zerygy;
   import bikyvym.Cedymynet;
   import wufyba.Pyluwej;
   import ryqerovo.Gid;
   import ryqerovo.Hikiravyt;
   import suzu.Ved;
   import fomykuq.Sedubali;


   public class Kopukaq extends Object implements Mive
   {
      public function Kopukaq() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      private const pubutahic:String = Sedubali.create(Kopukaq);

      private var qod:Wahovy;

      private var war:Cobyjowek;

      private var qohuwen:Naneciry;

      private var letehibod:Zerygy;

      public function extend(param1:Cedymynet) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.qod=param1.viqelo;
         this.qod.map(Pyluwej).dib(Gid);
         this.qod.map(Cobyjowek).dib(Hikiravyt);
         param1.sutu.ton(this.ton);
         param1.sutu.dypegu(this.dypegu);
         param1.sutu.hypyry(this.hypyry);
         return;
      }

      public function toString() : String {
         return this.pubutahic;
      }

      private function ton() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.war=this.qod.getInstance(Cobyjowek);
         this.letehibod=this.qod.getInstance(Zerygy);
         if(this.qod.kelovohiv(Naneciry))
         {
            this.qohuwen=this.qod.getInstance(Naneciry);
            this.qohuwen.fijyhefuh(this.war as Ved);
         }
         return;
      }

      private function dypegu() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Pyluwej = this.qod.getInstance(Pyluwej);
         _loc1_.vefatoka();
         if(this.qod.kelovohiv(Naneciry))
         {
            this.qohuwen=this.qod.getInstance(Naneciry);
            this.qohuwen.joder(this.war as Ved);
         }
         return;
      }

      private function hypyry() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.qod.kelovohiv(Cobyjowek))
         {
            this.qod.gihacas(Cobyjowek);
         }
         if(this.qod.kelovohiv(Pyluwej))
         {
            this.qod.gihacas(Pyluwej);
         }
         return;
      }
   }
[/CLASS]
}