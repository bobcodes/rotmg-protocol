package dec
{
[CLASS1647]   import tubovetyc.Sesy;
   import tubovetyc.Tepojyhob;
   import tubovetyc.Komaluq;
   import com.company.util.Sojef;


   public class Qusepykob extends Sesy
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Qusepykob() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         pehakocur("(D)raw",Sojef.D,this.select,zudazeqe);
         pehakocur("(E)rase",Sojef.E,this.select,fusab);
         pehakocur("S(A)mple",Sojef.A,this.select,vuzamida);
         pehakocur("Ed(I)t",Sojef.I,this.select,seze);
         pehakocur("(U)ndo",Sojef.U,this.wizicomyl,raropa);
         pehakocur("(R)edo",Sojef.R,this.mewyg,raropa);
         pehakocur("(C)lear",Sojef.C,this.nuqu,raropa);
         docezyb();
         pehakocur("(L)oad",Sojef.L,this.tabyq,raropa);
         pehakocur("(S)ave",Sojef.S,this.hef,raropa);
         pehakocur("(T)est",Sojef.T,this.lunuq,raropa);
         return;
      }

      public static const raropa:int = 0;

      public static const zudazeqe:int = 1;

      public static const fusab:int = 2;

      public static const vuzamida:int = 3;

      public static const seze:int = 4;

      private function select(param1:Tepojyhob) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         setSelected(param1);
         return;
      }

      private function wizicomyl(param1:Tepojyhob) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         dispatchEvent(new Komaluq(Komaluq.UNDO_COMMAND_EVENT));
         return;
      }

      private function mewyg(param1:Tepojyhob) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         dispatchEvent(new Komaluq(Komaluq.REDO_COMMAND_EVENT));
         return;
      }

      private function nuqu(param1:Tepojyhob) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         dispatchEvent(new Komaluq(Komaluq.CLEAR_COMMAND_EVENT));
         return;
      }

      private function tabyq(param1:Tepojyhob) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         dispatchEvent(new Komaluq(Komaluq.LOAD_COMMAND_EVENT));
         return;
      }

      private function hef(param1:Tepojyhob) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         dispatchEvent(new Komaluq(Komaluq.SAVE_COMMAND_EVENT));
         return;
      }

      private function lunuq(param1:Tepojyhob) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         dispatchEvent(new Komaluq(Komaluq.TEST_COMMAND_EVENT));
         return;
      }
   }
[/CLASS]
}