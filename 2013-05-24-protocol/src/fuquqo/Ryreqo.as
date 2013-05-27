package fuquqo
{
   import qov.Command;
   import pepyca.Depagy;
   import heko.Vagabe;
   import pepyca.Fifu;
   import nec.Sire;
   import aaa.rotmg.config.UserConfig;


   public class Ryreqo extends Command
   {
      public function Ryreqo() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var vezizeru:Depagy;

      public var moqi:Vagabe;

      public var fykimy:Rupo;

      public var model:Fifu;

      override public function execute() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.kelyr();
         this.wytygaqe();
         this.model.gizibi(this.vezizeru);
         this.fykimy.dispatch(this.vezizeru);
         return;
      }

      private function wytygaqe() : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:Sire = null;
         var _loc2_:String = null;
         if(this.vezizeru.name.length>0&&this.vezizeru.name.charAt(0)=="#")
         {
            _loc1_=new Sire().setParams(this.vezizeru.name.substr(1,this.vezizeru.name.length-1),this.vezizeru.tokens);
            _loc1_.menyhaky(this.moqi.nezori());
            _loc2_=_loc1_.getString();
            this.vezizeru.name=_loc2_?"#"+_loc2_:this.vezizeru.name;
         }
         return;
      }

      private function kelyr() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.vezizeru.name==UserConfig.pynezad||this.vezizeru.name==UserConfig.syjara||this.vezizeru.name==UserConfig.gez||this.vezizeru.name==UserConfig.giqik||this.vezizeru.name.charAt(0)=="#")
         {
            this.cucusizaj();
         }
         return;
      }

      public function cucusizaj() : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:Sire = new Sire().setParams(this.vezizeru.text,this.vezizeru.tokens);
         _loc1_.menyhaky(this.moqi.nezori());
         var _loc2_:String = _loc1_.getString();
         this.vezizeru.text=_loc2_?_loc2_:this.vezizeru.text;
         return;
      }
   }

}