package dec
{
[CLASS1106]   import flash.display.Sprite;
   import figoz.Stats;
   import tubovetyc.Rufigel;
   import zogu.Zuvitem;
   import gamusahan.Lahocuji;
   import com.company.util.IntPoint;
   import flash.events.Event;
   import __AS3__.vec.Vector;
   import tubovetyc.Sugamucol;
   import com.company.util.Gyk;
   import tubovetyc.Komaluq;
   import flash.geom.Rectangle;
   import flash.utils.ByteArray;
   import com.hurlant.util.Base64;
   import flash.net.FileReference;
   import com.company.assembleegameclient.map.Lakum;
   import com.company.assembleegameclient.objects.ObjectLibrary;
   import com.company.assembleegameclient.map.Vin;
   import flash.net.FileFilter;
   import flash.events.IOErrorEvent;
   import rymuhuduh.Cyzan;
   import qilarag.Sinutuci;
   import jutesesel.Qibigagal;


   public class Piwiqyh extends Sprite
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Piwiqyh() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         addChild(new Cyzan());
         addChild(new Sinutuci());
         this.pogitapy=Qibigagal.husuha().getInstance(Lahocuji);
         this.dedyce=new Qusepykob();
         this.dedyce.x=15;
         this.dedyce.y=kuhidin;
         this.dedyce.addEventListener(Komaluq.UNDO_COMMAND_EVENT,this.wizicomyl);
         this.dedyce.addEventListener(Komaluq.REDO_COMMAND_EVENT,this.mewyg);
         this.dedyce.addEventListener(Komaluq.CLEAR_COMMAND_EVENT,this.nuqu);
         this.dedyce.addEventListener(Komaluq.LOAD_COMMAND_EVENT,this.tabyq);
         this.dedyce.addEventListener(Komaluq.SAVE_COMMAND_EVENT,this.hef);
         this.dedyce.addEventListener(Komaluq.TEST_COMMAND_EVENT,this.lunuq);
         addChild(this.dedyce);
         this.degy=new Rufigel();
         this.lopec=new Qibynud();
         this.lopec.addEventListener(Muviw.TILES_EVENT,this.narysowe);
         this.lopec.x=800/2-Qibynud.soga/2;
         this.lopec.y=kuhidin;
         addChild(this.lopec);
         this.jopalun=new Zuvygym(this.lopec);
         this.jopalun.x=4;
         this.jopalun.y=600-Zuvygym.HEIGHT-10;
         addChild(this.jopalun);
         new Vector.<String>(3)[0]="Ground";
         new Vector.<String>(3)[1]="Objects";
         new Vector.<String>(3)[2]="Regions";
         this.tetoby=new Zuvitem(new Vector.<String>(3),Gifog.WIDTH,26);
         this.tetoby.x=this.lopec.x+Qibynud.soga+4;
         this.tetoby.y=kuhidin;
         this.tetoby.addEventListener(Event.CHANGE,this.zihuqiqiz);
         addChild(this.tetoby);
         this.pogotyz=new Vuhidely();
         this.pogotyz.x=this.tetoby.x;
         this.pogotyz.y=this.tetoby.y+this.tetoby.height+4;
         this.cac=this.pogotyz;
         addChild(this.pogotyz);
         this.jihuj=new Moqonim();
         this.jihuj.x=this.tetoby.x;
         this.jihuj.y=this.tetoby.y+this.tetoby.height+4;
         this.rysypu=new Qazuz();
         this.rysypu.x=this.tetoby.x;
         this.rysypu.y=this.tetoby.y+this.tetoby.height+4;
         return;
      }

      private static const kuhidin:int = 600-Qibynud.soga-10;

      public static const jibolu:Stats = new Stats();

      public var dedyce:Qusepykob;

      private var degy:Rufigel;

      public var lopec:Qibynud;

      public var jopalun:Zuvygym;

      public var tetoby:Zuvitem;

      public var pogotyz:Vuhidely;

      public var jihuj:Moqonim;

      public var rysypu:Qazuz;

      public var cac:Gifog;

      public var filename_:String = null;

      private var pogitapy:Lahocuji;

      private function narysowe(param1:Muviw) : void {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc2_:IntPoint = null;
         var _loc3_:* = 0;
         var _loc4_:String = null;
         var _loc5_:Hiryfis = null;
         _loc2_=param1.tiles_[0];
         switch(null)
         {
            case Qusepykob.zudazeqe:
               this.vevi(param1.tiles_,this.cac.zejujod,this.cac.zivymasub());
               break;
            case Qusepykob.fusab:
               this.vevi(param1.tiles_,this.cac.zejujod,-1);
               break;
            case Qusepykob.vuzamida:
               _loc3_=this.lopec.getType(_loc2_.x_,_loc2_.y_,this.cac.zejujod);
               if(_loc3_==-1)
               {
                  return;
               }
               this.cac.saqegiqu(_loc3_);
               this.dedyce.powakos(Qusepykob.zudazeqe);
               break;
            case Qusepykob.seze:
               _loc4_=this.lopec.togiwy(_loc2_.x_,_loc2_.y_);
               _loc5_=new Hiryfis(param1.tiles_,_loc4_);
               _loc5_.addEventListener(Event.COMPLETE,this.humuz);
               addChild(_loc5_);
               break;
         }
         this.lopec.draw();
         return;
      }

      private function humuz(param1:Event) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Hiryfis = param1.currentTarget as Hiryfis;
         this.jykyqo(_loc2_.tiles_,_loc2_.togiwy());
         return;
      }

      private function vevi(param1:Vector.<IntPoint>, param2:int, param3:int) : void {
         var _loc9_:* = false;
         var _loc10_:* = true;
         var _loc5_:IntPoint = null;
         var _loc6_:* = 0;
         var _loc4_:Sugamucol = new Sugamucol();
         for each (_loc5_ in param1)
         {
            _loc6_=this.lopec.getType(_loc5_.x_,_loc5_.y_,param2);
            if(_loc6_==param3)
            {
            }
            else
            {
               _loc4_.gaqisam(new Pevo(this.lopec,_loc5_.x_,_loc5_.y_,param2,_loc6_,param3));
            }
         }
         if(_loc4_.sihovujen())
         {
            return;
         }
         this.degy.fuquqen(_loc4_);
         return;
      }

      private function jykyqo(param1:Vector.<IntPoint>, param2:String) : void {
         var _loc8_:* = false;
         var _loc9_:* = true;
         var _loc4_:IntPoint = null;
         var _loc5_:String = null;
         var _loc3_:Sugamucol = new Sugamucol();
         for each (_loc4_ in param1)
         {
            _loc5_=this.lopec.togiwy(_loc4_.x_,_loc4_.y_);
            if(_loc5_==param2)
            {
            }
            else
            {
               _loc3_.gaqisam(new Pajuv(this.lopec,_loc4_.x_,_loc4_.y_,_loc5_,param2));
            }
         }
         if(_loc3_.sihovujen())
         {
            return;
         }
         this.degy.fuquqen(_loc3_);
         return;
      }

      private function zihuqiqiz(param1:Event) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         switch(null)
         {
            case "Ground":
               Gyk.bazeper(this,this.pogotyz);
               Gyk.qekecebo(this,this.jihuj);
               Gyk.qekecebo(this,this.rysypu);
               this.cac=this.pogotyz;
               break;
            case "Objects":
               Gyk.qekecebo(this,this.pogotyz);
               Gyk.bazeper(this,this.jihuj);
               Gyk.qekecebo(this,this.rysypu);
               this.cac=this.jihuj;
               break;
            case "Regions":
               Gyk.qekecebo(this,this.pogotyz);
               Gyk.qekecebo(this,this.jihuj);
               Gyk.bazeper(this,this.rysypu);
               this.cac=this.rysypu;
               break;
         }
         return;
      }

      private function wizicomyl(param1:Komaluq) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.degy.gowyneho();
         this.lopec.draw();
         return;
      }

      private function mewyg(param1:Komaluq) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.degy.selovy();
         this.lopec.draw();
         return;
      }

      private function nuqu(param1:Komaluq) : void {
         var _loc8_:* = false;
         var _loc9_:* = true;
         var _loc4_:IntPoint = null;
         var _loc5_:Luvotat = null;
         var _loc2_:Vector.<IntPoint> = this.lopec.gudiba();
         var _loc3_:Sugamucol = new Sugamucol();
         for each (_loc4_ in _loc2_)
         {
            _loc5_=this.lopec.qifybege(_loc4_.x_,_loc4_.y_);
            if(_loc5_==null)
            {
            }
            else
            {
               _loc3_.gaqisam(new Lah(this.lopec,_loc4_.x_,_loc4_.y_,_loc5_));
            }
         }
         if(_loc3_.sihovujen())
         {
            return;
         }
         this.degy.fuquqen(_loc3_);
         this.lopec.draw();
         this.filename_=null;
         return;
      }

      private function kyfizymyg() : String {
         var _loc12_:* = false;
         var _loc13_:* = true;
         var _loc7_:* = 0;
         var _loc8_:Luvotat = null;
         var _loc9_:Object = null;
         var _loc10_:String = null;
         var _loc11_:* = 0;
         var _loc1_:Rectangle = this.lopec.tufewimu();
         if(_loc1_==null)
         {
            return null;
         }
         var _loc2_:Object = {};
         _loc2_["width"]=int(_loc1_.width);
         _loc2_["height"]=int(_loc1_.height);
         var _loc3_:Object = {};
         var _loc4_:Array = [];
         var _loc5_:ByteArray = new ByteArray();
         var _loc6_:int = _loc1_.y;
         while(_loc6_<_loc1_.bottom)
         {
            _loc7_=_loc1_.x;
            while(_loc7_<_loc1_.right)
            {
               _loc8_=this.lopec.qifybege(_loc7_,_loc6_);
               _loc9_=this.gem(_loc8_);
               _loc10_=this.pogitapy.stringify(_loc9_);
               if(!_loc3_.hasOwnProperty(_loc10_))
               {
                  _loc11_=_loc4_.length;
                  _loc3_[_loc10_]=_loc11_;
                  _loc4_.push(_loc9_);
               }
               else
               {
                  _loc11_=_loc3_[_loc10_];
               }
               _loc5_.writeShort(_loc11_);
               _loc7_++;
            }
            _loc6_++;
         }
         _loc2_["dict"]=_loc4_;
         _loc5_.compress();
         _loc2_["data"]=Base64.encodeByteArray(_loc5_);
         return this.pogitapy.stringify(_loc2_);
      }

      private function hef(param1:Komaluq) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:String = this.kyfizymyg();
         if(_loc2_==null)
         {
            return;
         }
         new FileReference().save(_loc2_,this.filename_==null?"map.jm":this.filename_);
         return;
      }

      private function gem(param1:Luvotat) : Object {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc3_:Vector.<int> = null;
         var _loc4_:String = null;
         var _loc5_:Object = null;
         var _loc2_:Object = {};
         if(param1!=null)
         {
            _loc3_=param1.lakejuzyg;
            if(_loc3_[Duj.jejem]!=-1)
            {
               _loc4_=Lakum.peboda(_loc3_[Duj.jejem]);
               _loc2_["ground"]=_loc4_;
            }
            if(_loc3_[Duj.kehozyby]!=-1)
            {
               _loc4_=ObjectLibrary.peboda(_loc3_[Duj.kehozyby]);
               _loc5_={id:_loc4_};
               if(param1.semes!=null)
               {
                  _loc5_["name"]=param1.semes;
               }
               _loc2_["objs"]=[_loc5_];
            }
            if(_loc3_[Duj.kumuguz]!=-1)
            {
               _loc4_=Vin.peboda(_loc3_[Duj.kumuguz]);
               _loc2_["regions"]=[{id:_loc4_}];
            }
         }
         return _loc2_;
      }

      private var vutesyle:FileReference = null;

      private function tabyq(param1:Komaluq) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.vutesyle=new FileReference();
         this.vutesyle.addEventListener(Event.SELECT,this.leleqop);
         this.vutesyle.browse([new FileFilter("JSON Map (*.jm)","*.jm")]);
         return;
      }

      private function leleqop(param1:Event) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var event:Event = param1;
         var loadedFile:FileReference = event.target as FileReference;
         loadedFile.addEventListener(Event.COMPLETE,this.tododo);
         loadedFile.addEventListener(IOErrorEvent.IO_ERROR,this.suvusuqyf);
         try
         {
            loadedFile.load();
         }
         catch(e:Error)
         {
         }
         return;
      }

      private function tododo(param1:Event) : void {
         var _loc19_:* = false;
         var _loc20_:* = true;
         var _loc9_:* = 0;
         var _loc11_:* = 0;
         var _loc12_:Object = null;
         var _loc13_:Array = null;
         var _loc14_:Array = null;
         var _loc15_:Object = null;
         var _loc16_:Object = null;
         var _loc2_:FileReference = param1.target as FileReference;
         this.filename_=_loc2_.name;
         var _loc3_:Object = this.pogitapy.parse(_loc2_.data.toString());
         var _loc4_:int = _loc3_["width"];
         var _loc5_:int = _loc3_["height"];
         var _loc6_:Rectangle = new Rectangle(int(Qibynud.siqecupyz/2-_loc4_/2),int(Qibynud.siqecupyz/2-_loc5_/2),_loc4_,_loc5_);
         this.lopec.clear();
         this.degy.clear();
         var _loc7_:Array = _loc3_["dict"];
         var _loc8_:ByteArray = Base64.decodeToByteArray(_loc3_["data"]);
         _loc8_.uncompress();
         var _loc10_:int = _loc6_.y;
         while(_loc10_<_loc6_.bottom)
         {
            _loc11_=_loc6_.x;
            while(_loc11_<_loc6_.right)
            {
               _loc12_=_loc7_[_loc8_.readShort()];
               if(_loc12_.hasOwnProperty("ground"))
               {
                  _loc9_=Lakum.ronifyva[_loc12_["ground"]];
                  this.lopec.wegowe(_loc11_,_loc10_,Duj.jejem,_loc9_);
               }
               _loc13_=_loc12_["objs"];
               if(_loc13_!=null)
               {
                  for each (_loc15_ in _loc13_)
                  {
                     if(!ObjectLibrary.ronifyva.hasOwnProperty(_loc15_["id"]))
                     {
                     }
                     else
                     {
                        _loc9_=ObjectLibrary.ronifyva[_loc15_["id"]];
                        this.lopec.wegowe(_loc11_,_loc10_,Duj.kehozyby,_loc9_);
                        if(_loc15_.hasOwnProperty("name"))
                        {
                           this.lopec.cyhynoty(_loc11_,_loc10_,_loc15_["name"]);
                        }
                     }
                  }
               }
               _loc14_=_loc12_["regions"];
               if(_loc14_!=null)
               {
                  for each (_loc16_ in _loc14_)
                  {
                     _loc9_=Vin.ronifyva[_loc16_["id"]];
                     this.lopec.wegowe(_loc11_,_loc10_,Duj.kumuguz,_loc9_);
                  }
               }
               _loc11_++;
            }
            _loc10_++;
         }
         this.lopec.draw();
         return;
      }

      private function suvusuqyf(param1:Event) : void {
         return;
      }

      private function lunuq(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         dispatchEvent(new Zalurik(this.kyfizymyg()));
         return;
      }
   }
[/CLASS]
}