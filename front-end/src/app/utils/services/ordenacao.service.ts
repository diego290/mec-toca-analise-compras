import { Injectable } from '@angular/core';

@Injectable()
export class OrdenacaoService {

    private compare(v1, v2) {
        return v1 < v2 ? -1 : v1 > v2 ? 1 : 0;
    }
    
    sort(obj: any[], column: string, direction: string): any[] {
        if (direction === '') {
            return obj;
        } else {
            return [...obj].sort((a, b) => {
                const res = this.compare(a[column], b[column]);
                return direction === 'asc' ? res : -res;
            });
        }
    }
}