package sefylew
{
   import vysob.Dialog;
   import mukyrosu.Qanyduk;
   import komi.Vibemod;
   import qykifavol.Rulavowaz;


   public class Fadyqe extends Dialog
   {
      public function Fadyqe(param1:String, param2:Object=null) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         super(Vibemod.lemev,param1,Vibemod.nuhewefij,Vibemod.gywykewu,"/needRegister",param2);
         this.cancel=new Rulavowaz(this,LEFT_BUTTON);
         this.register=new Rulavowaz(this,RIGHT_BUTTON);
         return;
      }

      public var cancel:Qanyduk;

      public var register:Qanyduk;
   }

}