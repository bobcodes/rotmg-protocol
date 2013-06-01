package cyza
{
   import gag.Fijarih;
   import dopumitud.Gilapik;
   import ruwa.Hytezod;
   import nasokuqa.Lotop;
   import aaa.rotmg.config.UserConfig;
   import com.company.assembleegameclient.util.Repipi;
   import flash.net.navigateToURL;
   import flash.net.URLRequest;


   public class Sycajegoq extends Fijarih implements Gilapik
   {
      public function Sycajegoq() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var data:Hytezod;

      public var model:Lotop;

      override protected function startTask() : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         UserConfig.data_.paymentMethod=this.data.paymentMethod;
         UserConfig.save();
         var _loc1_:Repipi = Repipi.pomyrory(this.data.paymentMethod);
         var _loc2_:String = _loc1_.datol(this.model.mynuroqyl.tok,this.model.mynuroqyl.exp,this.data.offer);
         navigateToURL(new URLRequest(_loc2_),"_blank");
         syjavimu(true);
         return;
      }
   }

}