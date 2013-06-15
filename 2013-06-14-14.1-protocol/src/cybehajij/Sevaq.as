package cybehajij
{
   import gycu.Siv;
   import vilova.Hofuz;
   import pugem.Febyc;
   import kylelimib.Zazasinip;
   import aaa.RotmgParameters.RotmgParameters;
   import com.company.assembleegameclient.util.Tiguziro;
   import flash.net.navigateToURL;
   import flash.net.URLRequest;


   public class Sevaq extends Siv implements Hofuz
   {
      public function Sevaq() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var data:Febyc;

      public var model:Zazasinip;

      override protected function startTask() : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         RotmgParameters.data_.paymentMethod=this.data.paymentMethod;
         RotmgParameters.save();
         var _loc1_:Tiguziro = Tiguziro.muluq(this.data.paymentMethod);
         var _loc2_:String = _loc1_.rezocu(this.model.puputazes.tok,this.model.puputazes.exp,this.data.offer);
         navigateToURL(new URLRequest(_loc2_),"_blank");
         dom(true);
         return;
      }
   }

}