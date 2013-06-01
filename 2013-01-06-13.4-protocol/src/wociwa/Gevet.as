package wociwa
{
[CLASS1312]   import tehakab.Copaqufiv;
   import zun.Fyqyna;
   import lafol.Vidales;
   import sanijijiz.Cilym;
   import fadowu.Fotigy;


   public class Gevet extends Object
   {
      public function Gevet() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var skin:Copaqufiv;

      public var vivohasu:Fyqyna;

      public var server:Vidales;

      public function execute() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Fotigy = this.vivohasu.suqyz(Cilym.RESKIN) as Fotigy;
         _loc1_.skinID=this.skin.id;
         this.server.sendMessage(_loc1_);
         return;
      }
   }
[/CLASS]
}