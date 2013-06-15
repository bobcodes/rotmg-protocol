package zycysoj
{
   import poho.Kyhy;
   import poho.Dywygave;
   import poho.Pom;
   import poho.Bul;


   public class Qakatiw extends Object
   {
      public function Qakatiw() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var classes:Kyhy;

      public function execute() : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:int = this.classes.bugojopin();
         var _loc2_:* = 0;
         while(_loc2_<_loc1_)
         {
            this.nypyvezol(this.classes.zuhyl(_loc2_));
            _loc2_++;
         }
         return;
      }

      private function nypyvezol(param1:Dywygave) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         param1.gowek(param1.id==Kyhy.muquwo);
         this.tewyh(param1);
         return;
      }

      private function tewyh(param1:Dywygave) : void {
         var [OFS2]_loc6_:* = [/OFS]true;
         var [OFS4]_loc7_:* = [/OFS]false;
         var [OFS12]_loc5_:Pom = [/OFS][OFS8]null[/OFS];
         var [OFS25]_loc2_:Pom = [/OFS][OFS14]param1[/OFS].[OFS15]sybiwu[/OFS].[OFS18]syret[/OFS][OFS18]([/OFS][OFS18])[/OFS];
         var [OFS35]_loc3_:int = [/OFS][OFS26]param1[/OFS].[OFS27]sybiwu[/OFS].[OFS30]bugojopin[/OFS][OFS30]([/OFS][OFS30])[/OFS];
         var [OFS38]_loc4_:* = [/OFS][OFS36]0[/OFS];
         while([OFS83]_loc4_[/OFS][OFS86]<[/OFS][OFS85]_loc3_[/OFS])
         {
            [OFS59]_loc5_=[/OFS][OFS45]param1[/OFS].[OFS46]sybiwu[/OFS].[OFS51]toku[/OFS][OFS51]([/OFS][OFS49]_loc4_[/OFS][OFS51])[/OFS];
            if([OFS58]_loc5_[/OFS][OFS62]!=[/OFS][OFS61]_loc2_[/OFS])
            {
               this.[OFS77]vofepymo[/OFS][OFS77]([/OFS][OFS67]param1[/OFS].[OFS68]sybiwu[/OFS].[OFS73]toku[/OFS][OFS73]([/OFS][OFS71]_loc4_[/OFS][OFS73])[/OFS][OFS77])[/OFS];
            }
            _loc4_[OFS81]++[/OFS];
         }
         [OFS90]return[/OFS];
      }

      private function vofepymo(param1:Pom) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         param1.setState(Bul.LOCKED);
         return;
      }
   }

}