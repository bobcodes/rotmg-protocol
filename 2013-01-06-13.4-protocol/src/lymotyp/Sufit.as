package lymotyp
{
[CLASS926]   import dylaqezo.Vusun;
   import kabam.rotmg.assets.services.Vohemija;
   import tehakab.Supuvygac;
   import com.company.assembleegameclient.appengine.SavedCharacter;
   import tehakab.Cusifyha;
   import tehakab.Copaqufiv;
   import kabam.rotmg.assets.model.Animation;


   public class Sufit extends Object
   {
      public function Sufit() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var jojun:Vusun;

      public var factory:Vohemija;

      public var qoh:Supuvygac;

      private var sopiroret:SavedCharacter;

      private var dofyseb:Cusifyha;

      private var skin:Copaqufiv;

      private var tex2:int;

      private var tex1:int;

      public function make() : Animation {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.sopiroret=this.jojun.syci(this.jojun.zud);
         this.dofyseb=this.sopiroret?this.zygiz():this.lewehop();
         this.skin=this.dofyseb.pikyremo.nina();
         this.tex1=this.sopiroret?this.sopiroret.tex1():0;
         this.tex2=this.sopiroret?this.sopiroret.tex2():0;
         return this.factory.zefis(this.skin.jaqyb,100,this.tex1,this.tex2);
      }

      private function lewehop() : Cusifyha {
         return this.qoh.docew();
      }

      private function zygiz() : Cusifyha {
         return this.qoh.waqy(this.sopiroret.objectType());
      }
   }
[/CLASS]
}