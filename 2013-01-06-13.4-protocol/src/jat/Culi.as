package jat
{
[CLASS308]   import tysenyzy.Zovisis;
   import qypupet.Tuhyfutos;
   import fyvanod.Halak;
   import qypupet.Sikyvuvus;
   import kirofyny.Zaqylisot;
   import qypupet.Vuravipyg;


   public class Culi extends Zovisis
   {
      public function Culi() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:PetPicker;

      public var model:Tuhyfutos;

      public var livutygok:Halak;

      public var qidogy:Sikyvuvus;

      public var lyhog:Zaqylisot;

      override public function initialize() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.view.fyb(this.model.qunageg());
         var _loc1_:Vuravipyg = this.qidogy.selected==Sikyvuvus.LEFT?this.qidogy.gujudunyt:this.qidogy.jaq;
         if(_loc1_)
         {
            this.view.pec(_loc1_);
         }
         this.view.vekotov.addOnce(this.qibuqylo);
         return;
      }

      private function qibuqylo(param1:Vuravipyg) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.qidogy.selected==Sikyvuvus.LEFT)
         {
            this.qidogy.jaq=param1;
         }
         else
         {
            this.qidogy.gujudunyt=param1;
         }
         this.lyhog.dispatch(new this.qidogy.caller());
         return;
      }
   }
[/CLASS]
}