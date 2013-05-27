package nafa
{
   import dulywywo.Lidyvamu;
   import dulywywo.Moqy;
   import dulywywo.Famosehot;
   import com.company.util.Kiv;


   public class Pahopadif extends Lidyvamu
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Pahopadif() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         qoqyk("(D)raw",Kiv.D,this.select,zykecinoq);
         qoqyk("(E)rase",Kiv.E,this.select,jew);
         qoqyk("S(A)mple",Kiv.A,this.select,tecazyfo);
         qoqyk("Ed(I)t",Kiv.I,this.select,tepujuk);
         qoqyk("(U)ndo",Kiv.U,this.hynybumew,karenimos);
         qoqyk("(R)edo",Kiv.R,this.tavyzyce,karenimos);
         qoqyk("(C)lear",Kiv.C,this.viwa,karenimos);
         pobuqire();
         qoqyk("(L)oad",Kiv.L,this.lucip,karenimos);
         qoqyk("(S)ave",Kiv.S,this.jucafiso,karenimos);
         qoqyk("(T)est",Kiv.T,this.gikulofu,karenimos);
         return;
      }

      public static const karenimos:int = 0;

      public static const zykecinoq:int = 1;

      public static const jew:int = 2;

      public static const tecazyfo:int = 3;

      public static const tepujuk:int = 4;

      private function select(param1:Moqy) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         setSelected(param1);
         return;
      }

      private function hynybumew(param1:Moqy) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         dispatchEvent(new Famosehot(Famosehot.UNDO_COMMAND_EVENT));
         return;
      }

      private function tavyzyce(param1:Moqy) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         dispatchEvent(new Famosehot(Famosehot.REDO_COMMAND_EVENT));
         return;
      }

      private function viwa(param1:Moqy) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         dispatchEvent(new Famosehot(Famosehot.CLEAR_COMMAND_EVENT));
         return;
      }

      private function lucip(param1:Moqy) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         dispatchEvent(new Famosehot(Famosehot.LOAD_COMMAND_EVENT));
         return;
      }

      private function jucafiso(param1:Moqy) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         dispatchEvent(new Famosehot(Famosehot.SAVE_COMMAND_EVENT));
         return;
      }

      private function gikulofu(param1:Moqy) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         dispatchEvent(new Famosehot(Famosehot.TEST_COMMAND_EVENT));
         return;
      }
   }

}