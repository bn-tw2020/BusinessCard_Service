package snippet;

public class Snippet {
	#inlcude<stdio.h>
	
	void main(){
	
	    char string[100];
	    int i=0;
	
	    printf("식을 입력하시오. \n");
	    fgets(string, 100, stdin);
	
	    printf("수식 : %s \n", string);
	
	    for(i=0; string[i]!='\0'; i++){
	        // 영문, 언더바 판별 조건문
	        if((string[i]>='A' && string[i]<='Z') || string[i]='-' || (string[i]>='a' && string[i]<='Z')){
	            printf("식별자 : %c", string[i]);
	            while(1){
	                i++;
	                if((string[i]>='A' && string[i]<='Z') || string[i]=='_' || (string[i]>='a' && string[i]<='z')){
	                    printf("%c", string[i]);
	                }
	                else break;
	            }
	            printf("\n");
	            printf("token num ; 2\n");
	        }
	        // 숫자 판별 조건문
	        if(string[i]>='0' && string[i]<='9'){
	            printf("식별자 : %c", string[i]);
	
	            while(1){
	                i++;
	                if(string[i]<'0' || string[i] >'9') break;
	                printf("%c", string[i]);
	            }
	            printf("\n");
	            printf("token num : 4\n");
	        }
	    
	        //덧셈 연산자
	        if(string[i]=='+'){
	            printf("연산자 : + \n");
	            printf("token num : 6 \n");
	        }
	        //뺄셈 연산자
	        if(string[i]=='-'){
	            printf("연산자 : - \n");
	            printf("token num : 7 \n");
	        }
	        //곱셈 연산자
	        if(string[i]=='*'){
	            printf("연산자 : * \n");
	            printf("token num : 8 \n");
	        }
	        //나눗셈 연산자
	        if(string[i]=='/'){
	            printf("연산자 : / \n");
	            printf("token num : 9 \n");
	        }
	        //치환 연산자
	        if(string[i]=='='){
	            printf("연산자 : = \n");
	            printf("token num : 10 \n");
	        }
	        //; 구분자
	        if(string[i]==';'){
	            printf("연산자 : ; \n");
	            printf("token num : 12 \n");
	        }
	        //( 구분자
	        if(string[i]=='('){
	            printf("연산자 : ( \n");
	            printf("token num : 13 \n");
	        }
	        //) 구분자
	        if(string[i]==')'){
	            printf("연산자 : ) \n");
	            printf("token num : 14 \n");
	        }
	    }
	}
}

