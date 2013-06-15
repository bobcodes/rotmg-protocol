package padin
{
   import gycu.Siv;
   import vilova.Piwyc;
   import pugem.Account;
   import tam.Sav;
   import cinyj.Vobewabij;
   import hunavefeg.Depyrew;
   import gokyc.Rud;


   public class Micanaku extends Siv implements Piwyc
   {
      public function Micanaku() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var account:Account;

      public var ciqocu:Sav;

      public var data:Vobewabij;

      public var con:Depyrew;

      private var client:Rud;

      override protected function startTask() : void {
         var [OFS2]_loc1_:* = [/OFS]true;
         var [OFS3]_loc2_:* = [/OFS]false;
         this.[OFS7]con[/OFS].[OFS13]debug[/OFS][OFS13]([/OFS][OFS10]"startTask"[/OFS][OFS13])[/OFS];
         this.[OFS18]client[/OFS].[OFS23]kesanij[/OFS][OFS23]([/OFS][OFS21]2[/OFS][OFS23])[/OFS];
         this.[OFS28]client[/OFS].[OFS31]complete[/OFS].[OFS38]addOnce[/OFS][OFS38]([/OFS]this.[OFS35]onComplete[/OFS][OFS38])[/OFS];
         this.[OFS42]client[/OFS].[OFS53]sendRequest[/OFS][OFS53]([/OFS][OFS45]"/kongregate/register"[/OFS][OFS53],[/OFS]this.[OFS49]tyzif[/OFS][OFS49]([/OFS][OFS49])[/OFS][OFS53])[/OFS];
         [OFS57]return[/OFS];
      }

      private function onComplete(param1:Boolean, param2:*) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(param1)
         {
            this.wej(param2);
         }
         else
         {
            this.poren(param2);
         }
         return;
      }

      private function tyzif() : Object {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Object = this.ciqocu.zico();
         _loc1_.newGUID=this.data.username;
         _loc1_.newPassword=this.data.password;
         _loc1_.entrytag=this.account.dyw();
         return _loc1_;
      }

      private function wej(param1:String) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:XML = new XML(param1);
         this.con.debug("done - {0}",[_loc2_.GUID]);
         this.account.sapihaj(_loc2_.GUID,_loc2_.Secret);
         this.account.piwobaqej(_loc2_.PlatformToken);
         dom(true);
         return;
      }

      private function poren(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.con.debug("error - {0}",[param1]);
         dom(false,param1);
         return;
      }
   }

}