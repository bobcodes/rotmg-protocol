package patozam
{
   import lemugo.Wokycuku;
   import kabam.rotmg.assets.services.Bytedif;
   import poho.Kyhy;
   import com.company.assembleegameclient.appengine.SavedCharacter;
   import poho.Dywygave;
   import poho.Pom;
   import kabam.rotmg.assets.model.Animation;


   public class Juqacudu extends Object
   {
      public function Juqacudu() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var kejisacok:Wokycuku;

      public var factory:Bytedif;

      public var jopyza:Kyhy;

      private var vohyrowe:SavedCharacter;

      private var gys:Dywygave;

      private var skin:Pom;

      private var tex2:int;

      private var tex1:int;

      public function make() : Animation {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.vohyrowe=this.kejisacok.gohiqu(this.kejisacok.lobuwyjer);
         this.gys=this.vohyrowe?this.neq():this.ticer();
         this.skin=this.gys.sybiwu.bahalelaf();
         this.tex1=this.vohyrowe?this.vohyrowe.tex1():0;
         this.tex2=this.vohyrowe?this.vohyrowe.tex2():0;
         return this.factory.jet(this.skin.fegotu,100,this.tex1,this.tex2);
      }

      private function ticer() : Dywygave {
         return this.jopyza.gype();
      }

      private function neq() : Dywygave {
         return this.jopyza.gug(this.vohyrowe.objectType());
      }
   }

}