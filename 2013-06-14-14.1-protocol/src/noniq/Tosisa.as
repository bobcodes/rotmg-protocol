package noniq
{
   import taz.Vagyf;
   import taz.Fetypu;
   import taz.Nanob;
   import com.company.util.Coluf;


   public class Tosisa extends Vagyf
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Tosisa() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         dyby("(D)raw",Coluf.D,this.select,wolafi);
         dyby("(E)rase",Coluf.E,this.select,tyb);
         dyby("S(A)mple",Coluf.A,this.select,ryz);
         dyby("Ed(I)t",Coluf.I,this.select,zyrycobe);
         dyby("(U)ndo",Coluf.U,this.dacari,besefiqez);
         dyby("(R)edo",Coluf.R,this.zibycu,besefiqez);
         dyby("(C)lear",Coluf.C,this.hyti,besefiqez);
         sorimo();
         dyby("(L)oad",Coluf.L,this.jipuwun,besefiqez);
         dyby("(S)ave",Coluf.S,this.wowafu,besefiqez);
         dyby("(T)est",Coluf.T,this.lozan,besefiqez);
         return;
      }

      public static const besefiqez:int = 0;

      public static const wolafi:int = 1;

      public static const tyb:int = 2;

      public static const ryz:int = 3;

      public static const zyrycobe:int = 4;

      private function select(param1:Fetypu) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         setSelected(param1);
         return;
      }

      private function dacari(param1:Fetypu) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         dispatchEvent(new Nanob(Nanob.UNDO_COMMAND_EVENT));
         return;
      }

      private function zibycu(param1:Fetypu) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         dispatchEvent(new Nanob(Nanob.REDO_COMMAND_EVENT));
         return;
      }

      private function hyti(param1:Fetypu) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         dispatchEvent(new Nanob(Nanob.CLEAR_COMMAND_EVENT));
         return;
      }

      private function jipuwun(param1:Fetypu) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         dispatchEvent(new Nanob(Nanob.LOAD_COMMAND_EVENT));
         return;
      }

      private function wowafu(param1:Fetypu) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         dispatchEvent(new Nanob(Nanob.SAVE_COMMAND_EVENT));
         return;
      }

      private function lozan(param1:Fetypu) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         dispatchEvent(new Nanob(Nanob.TEST_COMMAND_EVENT));
         return;
      }
   }

}