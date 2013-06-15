package zekeqa
{
   import mukyrosu.Qanyduk;
   import com.company.assembleegameclient.game.Pajemiz;
   import flash.events.MouseEvent;
   import komi.Vibemod;


   public class Nohysoj extends Frame
   {
      public function Nohysoj(param1:Pajemiz, param2:Boolean) {
         var _loc4_:* = true;
         var _loc5_:* = false;
         super(Vibemod.dyje,Vibemod.diqysyk,Vibemod.suvesohu,"/chooseName");
         this.qyhowo=param1;
         this.qaker=param2;
         this.giziz=new Pedug(Vibemod.gobe,false);
         this.giziz.inputText_.restrict="A-Za-z";
         var _loc3_:* = 10;
         this.giziz.inputText_.maxChars=_loc3_;
         gozunigyl(this.giziz);
         lajocul(Vibemod.fap,{maxChars:_loc3_});
         lajocul(Vibemod.roruhy);
         lajocul(Vibemod.qar);
         vuz.addEventListener(MouseEvent.CLICK,this.onCancel);
         nuwido.addEventListener(MouseEvent.CLICK,this.kysotyz);
         return;
      }

      public const cancel:Qanyduk = new Qanyduk();

      public const choose:Qanyduk = new Qanyduk(String);

      public var qyhowo:Pajemiz;

      public var qaker:Boolean;

      private var giziz:Pedug;

      private function onCancel(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.cancel.dispatch();
         return;
      }

      private function kysotyz(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.choose.dispatch(this.giziz.text());
         disable();
         return;
      }

      public function nirin(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.giziz.nirin(param1);
         return;
      }
   }

}