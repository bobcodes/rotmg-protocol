package furybyfib
{
   import tytojonib.Kyjefe;
   import fytalis.ArenaPortalPanel;
   import dovuz.Vagogi;
   import zugevygam.Byty;
   import cizagamym.Boquzojul;
   import cizagamym.Lebovas;
   import wahyqise.Tuco;
   import wohy.Segeqofi;
   import dyca.Mes;
   import dicyl.Degonazev;
   import pugem.Account;
   import vysob.Dialog;
   import com.company.assembleegameclient.util.Currency;
   import zipo.Gagininaj;
   import zukinigor.Lazapy;
   import ducojoryn.Zim;
   import komi.Vibemod;
   import sefylew.Fadyqe;
   import wenono.Jiwir;
   import flash.events.Event;


   public class Vivykek extends Kyjefe
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Vivykek() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public static const TEXT:String = "SellableObjectPanelMediator.text";

      public var view:ArenaPortalPanel;

      public var gagoty:Vagogi;

      public var bufaz:Byty;

      public var ridecy:Boquzojul;

      public var gimenakal:Lebovas;

      public var nuzomit:Tuco;

      public var lohe:Segeqofi;

      public var difas:Mes;

      public var rot:Degonazev;

      public var account:Account;

      private var pevojal:Dialog;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.nemeg.add(this.gubebinu);
         return;
      }

      private function gubebinu(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(param1==Currency.win)
         {
            this.pawy();
         }
         else
         {
            this.hylehejyj();
         }
         return;
      }

      private function hylehejyj() : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:Gagininaj = null;
         var _loc2_:Lazapy = null;
         if(this.nuzomit.player.dihap)
         {
            this.lohe.sojyw();
            _loc1_=this.difas.getInstance(Gagininaj);
            _loc1_.start();
            _loc2_=this.bufaz.quseb(Zim.ENTER_ARENA) as Lazapy;
            _loc2_.currency=Currency.FAME;
            this.gagoty.sendMessage(_loc2_);
            this.rot.dispatch();
         }
         else
         {
            this.pevojal=new Dialog(Vibemod.lilevukim,Vibemod.nedoko,Vibemod.tave,null,null);
            this.pevojal.addEventListener(Dialog.LEFT_BUTTON,this.fyjazu);
            this.ridecy.dispatch(this.pevojal);
         }
         return;
      }

      private function pawy() : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:Gagininaj = null;
         var _loc2_:Lazapy = null;
         if(!this.account.zuqic())
         {
            this.ridecy.dispatch(new Fadyqe(TEXT,{type:Currency.tobizes(Currency.win)}));
         }
         else
         {
            if(!this.nuzomit.player.dihap)
            {
               this.pevojal=new Dialog(Vibemod.lilevukim,Vibemod.nedoko,Vibemod.tave,null,null);
               this.pevojal.addEventListener(Dialog.LEFT_BUTTON,this.fyjazu);
               this.ridecy.dispatch(this.pevojal);
            }
            else
            {
               if(this.nuzomit.player.credits_<50)
               {
                  this.ridecy.dispatch(new Jiwir());
               }
               else
               {
                  this.lohe.sojyw();
                  _loc1_=this.difas.getInstance(Gagininaj);
                  _loc1_.start();
                  _loc2_=this.bufaz.quseb(Zim.ENTER_ARENA) as Lazapy;
                  _loc2_.currency=Currency.win;
                  this.gagoty.sendMessage(_loc2_);
                  this.rot.dispatch();
               }
            }
         }
         return;
      }

      private function fyjazu(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if((this.pevojal)&&(this.pevojal.hasEventListener(Dialog.LEFT_BUTTON)))
         {
            this.pevojal.removeEventListener(Dialog.LEFT_BUTTON,this.fyjazu);
         }
         this.pevojal=null;
         this.gimenakal.dispatch();
         return;
      }
   }

}