package qifatubam
{
   import rikewu.Mywapiqas;
   import flash.events.Event;
   import flash.utils.ByteArray;
   import zipirytab.Console;


   public class Wyleqasij extends Viq
   {
      public function Wyleqasij(param1:Console) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var console:Console = param1;
         super(console);
         this.hile=new Object();
         remoter.addEventListener(Event.CONNECT,this.fosugew);
         remoter.registerCallback("log",new function(param1:ByteArray):void
         {
            registerLog(Mywapiqas.buwopena(param1));
            return;
            });
            return;
      }

      private var hile:Object;

      private var moculilu:uint;

      private var tufobyda:Mywapiqas;

      private var zebipano:Mywapiqas;

      private var zidy:Boolean;

      private var _timer:uint;

      public var first:Mywapiqas;

      public var last:Mywapiqas;

      private var ziqatez:uint;

      private var _lines:uint;

      private function fosugew(param1:Event) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Mywapiqas = this.first;
         while(_loc2_)
         {
            this.byfuf(_loc2_);
            _loc2_=_loc2_.next;
         }
         return;
      }

      private function byfuf(param1:Mywapiqas) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:ByteArray = null;
         if(remoter.canSend)
         {
            _loc2_=new ByteArray();
            param1.kyby(_loc2_);
            remoter.send("log",_loc2_);
         }
         return;
      }

      public function update(param1:uint) : Boolean {
         var _loc5_:* = false;
         var _loc6_:* = true;
         this._timer=param1;
         if(this.moculilu>0)
         {
            this.moculilu--;
         }
         if(this.zebipano)
         {
            if(this.tufobyda)
            {
               this.remove(this.tufobyda);
            }
            this.tufobyda=this.zebipano;
            this.zebipano=null;
            this.push(this.tufobyda);
         }
         var _loc2_:Boolean = this.zidy;
         this.zidy=false;
         return _loc2_;
      }

      public function add(param1:Mywapiqas) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         this._lines++;
         param1.line=this._lines;
         param1.time=this._timer;
         this.registerLog(param1);
         return;
      }

      private function registerLog(param1:Mywapiqas) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.zidy=true;
         this.addChannel(param1.ch);
         param1.tetur=param1.line+" ";
         param1.zynyqe="[<a href=\"event:channel_"+param1.ch+"\">"+param1.ch+"</a>] ";
         param1.tyqa=config.timeStampFormatter(param1.time)+" ";
         this.byfuf(param1);
         if(param1.repeat)
         {
            if(this.moculilu>0&&(this.tufobyda))
            {
               param1.line=this.tufobyda.line;
               this.zebipano=param1;
               return;
            }
            this.moculilu=config.maxRepeats;
            this.tufobyda=param1;
         }
         this.push(param1);
         while(this.ziqatez>config.maxLines&&config.maxLines>0)
         {
            this.remove(this.first);
         }
         if((config.tracing)&&!(config.traceCall==null))
         {
            config.traceCall(param1.ch,param1.plainText(),param1.priority);
         }
         return;
      }

      public function clear(param1:String=null) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Mywapiqas = null;
         if(param1)
         {
            _loc2_=this.first;
            while(_loc2_)
            {
               if(_loc2_.ch==param1)
               {
                  this.remove(_loc2_);
               }
               _loc2_=_loc2_.next;
            }
            delete this.hile[[param1]];
         }
         else
         {
            this.first=null;
            this.last=null;
            this.ziqatez=0;
            this.hile=new Object();
         }
         return;
      }

      public function getLogsAsString(param1:String, param2:Boolean=true, param3:Function=null) : String {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc4_:* = "";
         var _loc5_:Mywapiqas = this.first;
         while(_loc5_)
         {
            if(param3==null||(param3(_loc5_)))
            {
               if(this.first!=_loc5_)
               {
                  _loc4_=_loc4_+param1;
               }
               _loc4_=_loc4_+(param2?_loc5_.toString():_loc5_.plainText());
            }
            _loc5_=_loc5_.next;
         }
         return _loc4_;
      }

      public function getChannels() : Array {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc3_:String = null;
         var _loc1_:Array = new Array(Console.topodifuw);
         this.rakuwigu(Console.biloka,_loc1_);
         this.rakuwigu(Console.wup,_loc1_);
         this.rakuwigu(Babydel.monela,_loc1_);
         this.rakuwigu(Console.hizogo,_loc1_);
         var _loc2_:Array = new Array();
         for (_loc3_ in this.hile)
         {
            if(_loc1_.indexOf(_loc3_)<0)
            {
               _loc2_.push(_loc3_);
            }
         }
         return _loc1_.concat(_loc2_.sort(Array.CASEINSENSITIVE));
      }

      private function rakuwigu(param1:String, param2:Array) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(this.hile.hasOwnProperty(param1))
         {
            param2.push(param1);
         }
         return;
      }

      public function vipo() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.hile=new Object();
         var _loc1_:Mywapiqas = this.first;
         while(_loc1_)
         {
            this.addChannel(_loc1_.ch);
            _loc1_=_loc1_.next;
         }
         return;
      }

      public function addChannel(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.hile[param1]=null;
         return;
      }

      private function push(param1:Mywapiqas) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         if(this.last==null)
         {
            this.first=param1;
         }
         else
         {
            this.last.next=param1;
            param1.meqyfubyw=this.last;
         }
         this.last=param1;
         this.ziqatez++;
         return;
      }

      private function remove(param1:Mywapiqas) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         if(this.first==param1)
         {
            this.first=param1.next;
         }
         if(this.last==param1)
         {
            this.last=param1.meqyfubyw;
         }
         if(param1==this.tufobyda)
         {
            this.tufobyda=null;
         }
         if(param1==this.zebipano)
         {
            this.zebipano=null;
         }
         if(param1.next!=null)
         {
            param1.next.meqyfubyw=param1.meqyfubyw;
         }
         if(param1.meqyfubyw!=null)
         {
            param1.meqyfubyw.next=param1.next;
         }
         this.ziqatez--;
         return;
      }
   }

}