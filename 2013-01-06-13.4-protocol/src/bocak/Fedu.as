package bocak
{
[CLASS250]   import tysenyzy.Command;
   import qypupet.Tuhyfutos;
   import vinirudel.Wukyva;
   import kirofyny.Hehuf;
   import jat.Zuqegu;
   import qypupet.Dafuhu;
   import com.company.assembleegameclient.objects.ObjectLibrary;


   public class Fedu extends Command
   {
      public function Fedu() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var type:int;

      public var gadavuf:Tuhyfutos;

      public var fysufapav:Wukyva;

      public var lyhog:Hehuf;

      override public function execute() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.gadavuf.ryhis(this.fibiz());
         this.lyhog.dispatch(new Zuqegu(this.fysufapav.palaliz));
         return;
      }

      private function fibiz() : int {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:String = Dafuhu.cep(this.type).value;
         return ObjectLibrary.bisera(_loc1_).@type;
      }
   }
[/CLASS]
}