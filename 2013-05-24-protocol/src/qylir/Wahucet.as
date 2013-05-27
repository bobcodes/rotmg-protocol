package qylir
{
   import qov.Kalefu;
   import suko.Rerapipy;
   import hotewa.Lug;
   import hotewa.Baqifa;
   import cuwyg.Dewydo;
   import fom.Hepeg;
   import fom.Lihivak;
   import raqu.Hujuhy;
   import zoroc.Taqosohuf;
   import hedewi.Wyze;
   import povopito.Ryduwi;
   import hedewi.Moho;
   import qefinah.Zygafe;
   import hif.Rorody;
   import com.company.assembleegameclient.util.Kibaviv;
   import com.company.assembleegameclient.map.Map;
   import bisok.Qiwycuz;
   import pirus.Vimaz;
   import com.company.assembleegameclient.objects.OneWayContainer;
   import com.company.assembleegameclient.objects.Container;
   import __AS3__.vec.Vector;
   import com.company.assembleegameclient.objects.ObjectLibrary;
   import hedewi.Zyciwu;
   import suko.Tarus;
   import suko.Tynefuti;
   import aaa.rotmg.config.UserConfig;
   import com.company.assembleegameclient.objects.GameObject;
   import com.company.assembleegameclient.objects.Player;


   public class Wahucet extends Kalefu
   {
      public function Wahucet() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:Rerapipy;

      public var lofylise:Lug;

      public var muwi:Baqifa;

      public var gihopuheg:Dewydo;

      public var ruhakony:Hepeg;

      public var pog:Lihivak;

      public var showToolTip:Hujuhy;

      public var paqocahu:Taqosohuf;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.addEventListener(Wyze.ITEM_MOVE,this.hydo);
         this.view.addEventListener(Wyze.ITEM_SHIFT_CLICK,this.solym);
         this.view.addEventListener(Wyze.ITEM_DOUBLE_CLICK,this.suci);
         this.view.addEventListener(Wyze.ITEM_CTRL_CLICK,this.narur);
         this.view.cybat.add(this.jofeta);
         return;
      }

      private function jofeta(param1:Ryduwi) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.showToolTip.dispatch(param1);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super.destroy();
         return;
      }

      private function hydo(param1:Wyze) : void {
         var _loc8_:* = true;
         var _loc9_:* = false;
         var _loc4_:Moho = null;
         var _loc5_:Zygafe = null;
         var _loc6_:* = 0;
         var _loc7_:Rorody = null;
         var _loc2_:Moho = param1.tile;
         var _loc3_:* = Kibaviv.bikymecup(_loc2_.deqivivu(),Zygafe,Moho,Rorody,Map);
         if(_loc2_.vycuc()==Dewydo.mokikeqa||_loc2_.vycuc()==Dewydo.rywihuh&&!Boolean(_loc3_ as Rorody))
         {
            this.vyge(param1);
            return;
         }
         if(_loc3_ is Moho)
         {
            _loc4_=_loc3_ as Moho;
            if(this.syrutepyt(_loc2_,_loc4_))
            {
               this.ruc(_loc2_,_loc4_);
            }
         }
         else
         {
            if(_loc3_ is Map)
            {
               this.dovikolof(_loc2_);
            }
            else
            {
               if(_loc3_ is Zygafe)
               {
                  _loc5_=_loc3_ as Zygafe;
                  _loc6_=_loc2_.hywot.curPlayer.nextAvailableInventorySlot();
                  if(_loc6_!=-1)
                  {
                     Qiwycuz.worunyjub.invSwap(this.view.curPlayer,_loc2_.hywot.owner,_loc2_.nejidebup,_loc2_.cyjop.itemId,this.view.curPlayer,_loc6_,Vimaz.sufybefyr);
                     _loc2_.setItem(Vimaz.sufybefyr);
                     _loc2_.towiqoju(this.view.curPlayer);
                  }
               }
               else
               {
                  if(_loc3_ is Rorody)
                  {
                     _loc7_=_loc3_ as Rorody;
                     if(!_loc7_.tusyhunu)
                     {
                        this.paqocahu.mym=_loc2_.nejidebup;
                        this.paqocahu.vupu=_loc2_.hywot.owner.objectId_;
                        _loc7_.setItem(_loc2_.vycuc());
                        _loc7_.likodyk(this.denotin(_loc2_));
                        _loc2_.setItem(Vimaz.sufybefyr);
                        _loc2_.blockingItemUpdates=true;
                        _loc2_.towiqoju(this.view.curPlayer);
                     }
                  }
               }
            }
         }
         _loc2_.zydehaw();
         return;
      }

      private function denotin(param1:Moho) : Function {
         var itemSlot:Moho = param1;
         return new function():void
         {
            itemSlot.blockingItemUpdates=false;
            return;
         };
      }

      private function vyge(param1:Wyze) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:Moho = param1.tile;
         var _loc3_:* = Kibaviv.bikymecup(_loc2_.deqivivu(),Zygafe,Map);
         if(_loc3_ is Map)
         {
            this.dovikolof(_loc2_);
         }
         else
         {
            if(_loc3_ is Zygafe)
            {
               this.rutazurek(_loc2_);
            }
         }
         _loc2_.zydehaw();
         return;
      }

      private function rutazurek(param1:Moho) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(!Qiwycuz.worunyjub||!this.view.kacubuhu||!param1||this.gihopuheg.bomokic(param1.vycuc()).komysolad<=this.ruhakony.qizys.map.player_.getPotionCount(param1.vycuc()))
         {
            return;
         }
         Qiwycuz.worunyjub.invSwapPotion(this.view.curPlayer,this.view.owner,param1.nejidebup,param1.cyjop.itemId,this.view.curPlayer,Dewydo.fil(param1.vycuc()),Vimaz.sufybefyr);
         param1.setItem(Vimaz.sufybefyr);
         param1.towiqoju(this.view.curPlayer);
         return;
      }

      private function syrutepyt(param1:Moho, param2:Moho) : Boolean {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(!param1.canHoldItem(param2.vycuc()))
         {
            return false;
         }
         if(!param2.canHoldItem(param1.vycuc()))
         {
            return false;
         }
         if(Rerapipy(param2.parent).owner is OneWayContainer)
         {
            return false;
         }
         if((param1.blockingItemUpdates)||(param2.blockingItemUpdates))
         {
            return false;
         }
         return true;
      }

      private function dovikolof(param1:Moho) : void {
         var _loc8_:* = false;
         var _loc9_:* = true;
         var _loc4_:Container = null;
         var _loc5_:Vector.<int> = null;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc2_:Boolean = ObjectLibrary.wucosiq(param1.cyjop.itemId);
         var _loc3_:Container = this.view.owner as Container;
         if(this.view.owner==this.view.curPlayer||((_loc3_)&&(_loc3_.ownerId_==this.view.curPlayer.accountId_))&&(!_loc2_))
         {
            _loc4_=this.lofylise.qypat as Container;
            if(_loc4_)
            {
               _loc5_=_loc4_.jevuqike;
               _loc6_=_loc5_.length;
               _loc7_=0;
               while(_loc7_<_loc6_)
               {
                  if(_loc5_[_loc7_]<0)
                  {
                     break;
                  }
                  _loc7_++;
               }
               if(_loc7_<_loc6_)
               {
                  this.gojywuq(param1,_loc4_,_loc7_);
               }
               else
               {
                  Qiwycuz.worunyjub.invDrop(this.view.owner,param1.nejidebup,param1.vycuc());
               }
            }
            else
            {
               Qiwycuz.worunyjub.invDrop(this.view.owner,param1.nejidebup,param1.vycuc());
            }
         }
         param1.setItem(-1);
         return;
      }

      private function ruc(param1:Zyciwu, param2:Zyciwu) : Boolean {
         var _loc4_:* = true;
         var _loc5_:* = false;
         if(!Qiwycuz.worunyjub||!this.view.kacubuhu||!param1||!param2)
         {
            return false;
         }
         Qiwycuz.worunyjub.invSwap(this.view.curPlayer,this.view.owner,param1.nejidebup,param1.cyjop.itemId,param2.hywot.owner,param2.nejidebup,param2.cyjop.itemId);
         var _loc3_:int = param1.vycuc();
         param1.setItem(param2.vycuc());
         param2.setItem(_loc3_);
         param1.towiqoju(this.view.curPlayer);
         param2.towiqoju(this.view.curPlayer);
         return true;
      }

      private function gojywuq(param1:Zyciwu, param2:Container, param3:int) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         if(!Qiwycuz.worunyjub||!this.view.kacubuhu||!param1||!param2)
         {
            return;
         }
         Qiwycuz.worunyjub.invSwap(this.view.curPlayer,this.view.owner,param1.nejidebup,param1.cyjop.itemId,param2,param3,-1);
         param1.setItem(Vimaz.sufybefyr);
         return;
      }

      private function solym(param1:Wyze) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Moho = param1.tile;
         if(_loc2_.hywot is Tarus||_loc2_.hywot is Tynefuti)
         {
            Qiwycuz.worunyjub.useItem_new(_loc2_.hywot.owner,_loc2_.nejidebup);
         }
         return;
      }

      private function narur(param1:Wyze) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:Moho = null;
         var _loc3_:* = 0;
         if(UserConfig.data_.inventorySwap)
         {
            _loc2_=param1.tile;
            if(_loc2_.hywot is Tarus)
            {
               _loc3_=_loc2_.hywot.curPlayer.swapInventoryIndex(this.pog.digyqy);
               if(_loc3_!=-1)
               {
                  Qiwycuz.worunyjub.invSwap(this.view.curPlayer,_loc2_.hywot.owner,_loc2_.nejidebup,_loc2_.cyjop.itemId,this.view.curPlayer,_loc3_,Vimaz.sufybefyr);
                  _loc2_.setItem(Vimaz.sufybefyr);
                  _loc2_.towiqoju(this.view.curPlayer);
               }
            }
         }
         return;
      }

      private function suci(param1:Wyze) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Moho = param1.tile;
         if(this.qesumelu(_loc2_))
         {
            this.rutazurek(_loc2_);
         }
         else
         {
            if(_loc2_.hywot is Tynefuti)
            {
               this.gypu(_loc2_);
            }
            else
            {
               this.hur(_loc2_);
            }
         }
         this.view.qenabus();
         return;
      }

      private function qesumelu(param1:Moho) : Boolean {
         var _loc2_:* = true;
         var _loc3_:* = false;
         return param1.vycuc()==Dewydo.mokikeqa||param1.vycuc()==Dewydo.rywihuh;
      }

      private function boromi(param1:Moho) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:int = this.view.curPlayer.nextAvailableInventorySlot();
         if(_loc2_!=-1)
         {
            Qiwycuz.worunyjub.invSwap(this.view.curPlayer,this.view.owner,param1.nejidebup,param1.cyjop.itemId,this.view.curPlayer,_loc2_,Vimaz.sufybefyr);
         }
         return;
      }

      private function gypu(param1:Moho) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:GameObject = param1.hywot.owner;
         var _loc3_:Player = this.view.curPlayer;
         var _loc4_:int = this.view.curPlayer.nextAvailableInventorySlot();
         if(_loc4_!=-1)
         {
            Qiwycuz.worunyjub.invSwap(_loc3_,this.view.owner,param1.nejidebup,param1.cyjop.itemId,this.view.curPlayer,_loc4_,Vimaz.sufybefyr);
         }
         else
         {
            Qiwycuz.worunyjub.useItem_new(_loc2_,param1.nejidebup);
         }
         return;
      }

      private function hur(param1:Moho) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:GameObject = param1.hywot.owner;
         var _loc3_:Player = this.view.curPlayer;
         var _loc4_:int = ObjectLibrary.moqofulo(param1.vycuc(),_loc3_);
         if(_loc4_!=-1)
         {
            Qiwycuz.worunyjub.invSwap(_loc3_,_loc2_,param1.nejidebup,param1.vycuc(),_loc3_,_loc4_,_loc3_.jevuqike[_loc4_]);
         }
         else
         {
            Qiwycuz.worunyjub.useItem_new(_loc2_,param1.nejidebup);
         }
         return;
      }
   }

}