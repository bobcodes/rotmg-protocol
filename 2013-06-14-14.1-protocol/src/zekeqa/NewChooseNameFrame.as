package zekeqa
{
   import mukyrosu.Qanyduk;
   import flash.events.MouseEvent;
   import komi.Vibemod;


   public class NewChooseNameFrame extends Frame
   {
      public function NewChooseNameFrame() {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super(Vibemod.dyje,Vibemod.diqysyk,Vibemod.suvesohu,"/newChooseName");
         this.name_=new Pedug(Vibemod.fuv,false);
         this.name_.inputText_.restrict="A-Za-z";
         var _loc1_:* = 10;
         this.name_.inputText_.maxChars=_loc1_;
         gozunigyl(this.name_);
         lajocul(Vibemod.fap,{maxChars:_loc1_});
         lajocul(Vibemod.roruhy);
         lajocul(Vibemod.qar);
         vuz.addEventListener(MouseEvent.CLICK,this.onCancel);
         nuwido.addEventListener(MouseEvent.CLICK,this.kysotyz);
         return;
      }

      public const choose:Qanyduk = new Qanyduk();

      public const cancel:Qanyduk = new Qanyduk();

      private var name_:Pedug;

      private function kysotyz(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.choose.dispatch(this.name_.text());
         return;
      }

      private function onCancel(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.cancel.dispatch();
         return;
      }

      public function nirin(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.name_.nirin(param1);
         return;
      }
   }

}