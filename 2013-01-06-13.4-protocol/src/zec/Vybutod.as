package zec
{
[CLASS301]   import tysenyzy.Zovisis;
   import kirofyny.Hehuf;
   import qypupet.Sikyvuvus;
   import bocak.Vopiho;
   import pogefeqeh.Wahovy;
   import jat.Linuzape;
   import qypupet.Ruze;
   import sanijijiz.Fyhigu;
   import cejyva.ErrorDialog;


   public class Vybutod extends Zovisis
   {
      public function Vybutod() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:Qyniv;

      public var lyhog:Hehuf;

      public var qidogy:Sikyvuvus;

      public var gyjoj:Vopiho;

      public var viqelo:Wahovy;

      private const kese:String = "Pets.fuseError";

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.init(this.qidogy);
         this.view.zate.add(this.lewema);
         this.view.qosenic.add(this.tarini);
         this.view.buniwyr.add(this.qehahoq);
         this.view.closed.addOnce(this.zykekulucy);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.zate.remove(this.lewema);
         this.view.qosenic.remove(this.tarini);
         this.view.buniwyr.remove(this.qehahoq);
         return;
      }

      private function lewema(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.qidogy.caller=Qyniv;
         this.qidogy.selected=param1;
         this.lyhog.dispatch(this.viqelo.getInstance(Linuzape));
         return;
      }

      private function qehahoq(param1:int) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Ruze = null;
         if(this.qidogy.kizu())
         {
            _loc2_=new Ruze(this.qidogy.jaq.lecafis(),this.qidogy.gujudunyt.lecafis(),Fyhigu.filywygok);
            this.zykekulucy();
            this.gyjoj.dispatch(_loc2_);
         }
         else
         {
            this.lyhog.dispatch(new ErrorDialog(this.kese));
         }
         return;
      }

      private function tarini(param1:int) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Ruze = null;
         if(this.qidogy.kizu())
         {
            _loc2_=new Ruze(this.qidogy.jaq.lecafis(),this.qidogy.gujudunyt.lecafis(),Fyhigu.wucym);
            this.zykekulucy();
            this.gyjoj.dispatch(_loc2_);
         }
         else
         {
            this.lyhog.dispatch(new ErrorDialog(this.kese));
         }
         return;
      }

      private function zykekulucy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.qidogy.clear();
         return;
      }
   }
[/CLASS]
}