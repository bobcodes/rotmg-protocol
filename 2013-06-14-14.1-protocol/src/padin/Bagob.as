package padin
{
   import gycu.Siv;
   import vilova.Dofopilu;
   import pugem.Account;
   import cinyj.Vobewabij;
   import tam.Sav;
   import gokyc.Rud;


   public class Bagob extends Siv implements Dofopilu
   {
      public function Bagob() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var account:Account;

      public var data:Vobewabij;

      public var ciqocu:Sav;

      public var client:Rud;

      override protected function startTask() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.client.complete.addOnce(this.onComplete);
         this.client.sendRequest("/steamworks/link",this.tyzif());
         return;
      }

      private function tyzif() : Object {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Object = this.ciqocu.zico();
         _loc1_.guid=this.data.username;
         _loc1_.password=this.data.password;
         return _loc1_;
      }

      private function onComplete(param1:Boolean, param2:*) : void {
         var [OFS3]_loc3_:* = [/OFS]false;
         var [OFS4]_loc4_:* = [/OFS]true;
         [OFS28]dom[/OFS][OFS28]([/OFS][OFS26]param1[/OFS][OFS28],[/OFS][OFS27]param2[/OFS][OFS28])[/OFS];
         [OFS31]return[/OFS];
      }

      private function bafyqisib(param1:String) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:XML = new XML(param1);
         this.account.sapihaj(_loc2_.GUID,_loc2_.Secret);
         this.account.piwobaqej(_loc2_.PlatformToken);
         return;
      }
   }

}