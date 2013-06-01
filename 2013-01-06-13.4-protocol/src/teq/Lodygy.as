package teq
{
[CLASS687]   import syfuqycy.Gyz;
   import vofepimy.Poheg;
   import leselo.Account;
   import qiwyz.Bozakehy;
   import kyhawibyc.Fapu;
   import flash.net.SharedObject;
   import syfuqycy.Motumeq;
   import com.company.assembleegameclient.util.GUID;


   public class Lodygy extends Gyz implements Poheg
   {
      public function Lodygy() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var account:Account;

      public var client:Bozakehy;

      private var data:Fapu;

      override protected function startTask() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.fymari();
         if(this.data.username)
         {
            this.sitidu();
         }
         else
         {
            this.byguva();
         }
         return;
      }

      private function fymari() : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var rotmg:SharedObject = null;
         this.data=new Fapu();
         rotmg=SharedObject.getLocal("RotMG","/");
         return;
      }

      private function sitidu() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Jajyvo = new Jajyvo();
         _loc1_.account=this.account;
         _loc1_.client=this.client;
         _loc1_.data=this.data;
         _loc1_.gegyco.addOnce(this.gyqahetov);
         _loc1_.start();
         return;
      }

      private function gyqahetov(param1:Motumeq, param2:Boolean, param3:String="") : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         pylebodyq(true);
         return;
      }

      private function byguva() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.account.fuv(GUID.create(),null);
         pylebodyq(true);
         return;
      }
   }
[/CLASS]
}