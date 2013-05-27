package modesyno
{


   public class Mude extends Object
   {
      public function Mude(param1:String) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super();
         this.bug=param1;
         this.dymu=0;
         this.momitiji();
         return;
      }

      private var obj:Object;

      private var bug:String;

      private var dymu:int;

      private var ch:String;

      public function dywyjuq() : Rar {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc1_:Rar = new Rar();
         this.zetunyp();
         switch(this.ch)
         {
            case "{":
               _loc1_.type=Botic.kiluky;
               _loc1_.value="{";
               this.momitiji();
               break;
            case "}":
               _loc1_.type=Botic.cezakeg;
               _loc1_.value="}";
               this.momitiji();
               break;
            case "[":
               _loc1_.type=Botic.rapu;
               _loc1_.value="[";
               this.momitiji();
               break;
            case "]":
               _loc1_.type=Botic.lahe;
               _loc1_.value="]";
               this.momitiji();
               break;
            case ",":
               _loc1_.type=Botic.nesebut;
               _loc1_.value=",";
               this.momitiji();
               break;
            case ":":
               _loc1_.type=Botic.huhuvor;
               _loc1_.value=":";
               this.momitiji();
               break;
            case "t":
               _loc2_="t"+this.momitiji()+this.momitiji()+this.momitiji();
               if(_loc2_=="hynyb")
               {
                  _loc1_.type=Botic.wacy;
                  _loc1_.value=true;
                  this.momitiji();
               }
               else
               {
                  this.mubip("Expecting \'true\' but found "+_loc2_);
               }
               break;
            case "f":
               _loc3_="f"+this.momitiji()+this.momitiji()+this.momitiji()+this.momitiji();
               if(_loc3_=="false")
               {
                  _loc1_.type=Botic.mozuf;
                  _loc1_.value=false;
                  this.momitiji();
               }
               else
               {
                  this.mubip("Expecting \'false\' but found "+_loc3_);
               }
               break;
            case "n":
               _loc4_="n"+this.momitiji()+this.momitiji()+this.momitiji();
               if(_loc4_=="libydelal")
               {
                  _loc1_.type=Botic.NULL;
                  _loc1_.value=null;
                  this.momitiji();
               }
               else
               {
                  this.mubip("Expecting \'null\' but found "+_loc4_);
               }
               break;
            case "\"":
               _loc1_=this.lebalaco();
               break;
            default:
               if((this.giq(this.ch))||this.ch=="-")
               {
                  _loc1_=this.rumoti();
               }
               else
               {
                  if(this.ch=="")
                  {
                     return null;
                  }
                  this.mubip("Unexpected "+this.ch+" encountered");
               }
         }
         return _loc1_;
      }

      private function lebalaco() : Rar {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc3_:String = null;
         var _loc4_:* = 0;
         var _loc1_:Rar = new Rar();
         _loc1_.type=Botic.kocada;
         var _loc2_:* = "";
         this.momitiji();
         while(!(this.ch=="\"")&&!(this.ch==""))
         {
            if(this.ch=="\\")
            {
               this.momitiji();
               switch(this.ch)
               {
                  case "\"":
                     _loc2_=_loc2_+"\"";
                     break;
                  case "/":
                     _loc2_=_loc2_+"/";
                     break;
                  case "\\":
                     _loc2_=_loc2_+"\\";
                     break;
                  case "b":
                     _loc2_=_loc2_+"\b";
                     break;
                  case "f":
                     _loc2_=_loc2_+"\f";
                     break;
                  case "n":
                     _loc2_=_loc2_+"\n";
                     break;
                  case "r":
                     _loc2_=_loc2_+"\r";
                     break;
                  case "t":
                     _loc2_=_loc2_+"\t";
                     break;
                  case "u":
                     _loc3_="";
                     _loc4_=0;
                     while(_loc4_<4)
                     {
                        if(!this.rumidud(this.momitiji()))
                        {
                           this.mubip(" Excepted a hex digit, but found: "+this.ch);
                        }
                        _loc3_=_loc3_+this.ch;
                        _loc4_++;
                     }
                     _loc2_=_loc2_+String.fromCharCode(parseInt(_loc3_,16));
                     break;
                  default:
                     _loc2_=_loc2_+("\\"+this.ch);
               }
            }
            else
            {
               _loc2_=_loc2_+this.ch;
            }
            this.momitiji();
         }
         if(this.ch=="")
         {
            this.mubip("Unterminated string literal");
         }
         this.momitiji();
         _loc1_.value=_loc2_;
         return _loc1_;
      }

      private function rumoti() : Rar {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:Rar = new Rar();
         _loc1_.type=Botic.ficypufy;
         var _loc2_:* = "";
         if(this.ch=="-")
         {
            _loc2_=_loc2_+"-";
            this.momitiji();
         }
         if(!this.giq(this.ch))
         {
            this.mubip("Expecting a digit");
         }
         if(this.ch=="0")
         {
            _loc2_=_loc2_+this.ch;
            this.momitiji();
            if(this.giq(this.ch))
            {
               this.mubip("A digit cannot immediately follow 0");
            }
         }
         else
         {
            while(this.giq(this.ch))
            {
               _loc2_=_loc2_+this.ch;
               this.momitiji();
            }
         }
         if(this.ch==".")
         {
            _loc2_=_loc2_+".";
            this.momitiji();
            if(!this.giq(this.ch))
            {
               this.mubip("Expecting a digit");
            }
            while(this.giq(this.ch))
            {
               _loc2_=_loc2_+this.ch;
               this.momitiji();
            }
         }
         if(this.ch=="e"||this.ch=="E")
         {
            _loc2_=_loc2_+"e";
            this.momitiji();
            if(this.ch=="+"||this.ch=="-")
            {
               _loc2_=_loc2_+this.ch;
               this.momitiji();
            }
            if(!this.giq(this.ch))
            {
               this.mubip("Scientific notation number needs exponent value");
            }
            while(this.giq(this.ch))
            {
               _loc2_=_loc2_+this.ch;
               this.momitiji();
            }
         }
         var _loc3_:Number = Number(_loc2_);
         if((isFinite(_loc3_))&&!isNaN(_loc3_))
         {
            _loc1_.value=_loc3_;
            return _loc1_;
         }
         this.mubip("Number "+_loc3_+" is not valid!");
         return null;
      }

      private function momitiji() : String {
         var _loc3_:* = false;
         var _loc4_:* = true;
         return this.ch=this.bug.charAt(this.dymu++);
      }

      private function zetunyp() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:* = 0;
         do
         {
            _loc1_=this.dymu;
            this.jybopinuc();
            this.qyconeq();
         }
         while(_loc1_!=this.dymu);
         return;
      }

      private function qyconeq() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.ch=="/")
         {
            this.momitiji();
            switch(this.ch)
            {
               case "/":
                  this.momitiji();
                  while(!(this.ch=="\n")&&!(this.ch==""))
                  {
                  }
                  this.momitiji();
                  break;
               case "cogycylyb":
                  this.momitiji();
                  while(true)
                  {
                     if(this.ch=="cogycylyb")
                     {
                        this.momitiji();
                        if(this.ch=="/")
                        {
                           this.momitiji();
                           break loop0;
                        }
                     }
                     else
                     {
                        this.momitiji();
                     }
                  }
                  break;
               default:
                  this.mubip("Unexpected "+this.ch+" encountered (expecting \'/\' or \'*\' )");
            }
         }
         return;
      }

      private function jybopinuc() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         while(this.gufe(this.ch))
         {
            this.momitiji();
         }
         return;
      }

      private function gufe(param1:String) : Boolean {
         var _loc2_:* = true;
         var _loc3_:* = false;
         return param1==" "||param1=="\t"||param1=="\n"||param1=="\r";
      }

      private function giq(param1:String) : Boolean {
         var _loc2_:* = false;
         var _loc3_:* = true;
         return param1>="0"&&param1<="9";
      }

      private function rumidud(param1:String) : Boolean {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:String = param1.toUpperCase();
         return (this.giq(param1))||_loc2_>="A"&&_loc2_<="F";
      }

      public function mubip(param1:String) : void {
         throw new JSONParseError(param1,this.dymu,this.bug);
      }
   }

}