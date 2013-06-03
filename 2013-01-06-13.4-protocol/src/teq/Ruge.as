package teq
{
[CLASS656]   import syfuqycy.Gyz;
   import vofepimy.Hucu;
   import leselo.Cetyqysy;
   import helepebas.Zedypina;
   import aaa.Parameters;
   import com.company.assembleegameclient.util.Ruzizi;
   import flash.net.navigateToURL;
   import flash.net.URLRequest;


   public class Ruge extends Gyz implements Hucu
   {
      public function Ruge() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var data:Cetyqysy;

      public var model:Zedypina;

      override protected function startTask() : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         Parameters.data_.paymentMethod=this.data.paymentMethod;
         Parameters.save();
         var _loc1_:Ruzizi = Ruzizi.qovozuh(this.data.paymentMethod);
         var _loc2_:String = _loc1_.hewyhip(this.model.cok.tok,this.model.cok.exp,this.data.offer);
         navigateToURL(new URLRequest(_loc2_),"_blank");
         pylebodyq(true);
         return;
      }
   }
[/CLASS]
}