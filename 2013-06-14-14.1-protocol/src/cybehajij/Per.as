package cybehajij
{
   import gycu.Siv;
   import vilova.Sekevizi;
   import pugem.Account;
   import gokyc.Rud;
   import cinyj.Vobewabij;
   import flash.net.SharedObject;
   import gycu.Cyqe;
   import com.company.assembleegameclient.util.GUID;


   public class Per extends Siv implements Sekevizi
   {
      public function Per() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var account:Account;

      public var client:Rud;

      private var data:Vobewabij;

      override protected function startTask() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.nasogi();
         if(this.data.username)
         {
            this.nuhobyz();
         }
         else
         {
            this.nuduqeg();
         }
         return;
      }

      private function nasogi() : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var rotmg:SharedObject = null;
         this.data=new Vobewabij();
         rotmg=SharedObject.getLocal("RotMG","/");
         return;
      }

      private function nuhobyz() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Pujaw = new Pujaw();
         _loc1_.account=this.account;
         _loc1_.client=this.client;
         _loc1_.data=this.data;
         _loc1_.byqato.addOnce(this.hipilytu);
         _loc1_.start();
         return;
      }

      private function hipilytu(param1:Cyqe, param2:Boolean, param3:String="") : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         dom(true);
         return;
      }

      private function nuduqeg() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.account.sapihaj(GUID.create(),null);
         dom(true);
         return;
      }
   }

}